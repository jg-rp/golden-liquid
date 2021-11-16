import fs from "node:fs";

import { Liquid } from "liquidjs";
import { FS } from "liquidjs/dist/fs/fs";

/**
 *
 */
class MapFS implements FS {
  readonly templates: Map<string, string>;

  /**
   *
   * @param iterable
   */
  constructor(iterable?: Iterable<[string, string]>) {
    if (iterable !== undefined) {
      this.templates = new Map(iterable);
    } else {
      this.templates = new Map();
    }
  }

  async exists(filepath: string): Promise<boolean> {
    return this.templates.has(filepath);
  }

  existsSync(filepath: string): boolean {
    return this.templates.has(filepath);
  }

  async readFile(filepath: string): Promise<string> {
    return this.readFileSync(filepath);
  }

  readFileSync(filepath: string): string {
    const content = this.templates.get(filepath);
    if (content === undefined) {
      throw new Error("ENOENT");
    }
    return content;
  }

  resolve(dir: string, file: string, ext: string): string {
    return file + ext;
  }
}

/**
 *
 */
type Case = {
  name: string;
  template: string;
  want: string;
  context: Record<string, unknown>;
  partials: Record<string, string>;
  standard: boolean;
};

/**
 *
 */
type TestGroup = {
  name: string;
  tests: Case[];
};

describe("render", () => {
  const golden = JSON.parse(fs.readFileSync("golden_liquid.json", "utf-8"));

  describe.each<TestGroup>(golden.test_groups)(
    "$name",
    ({ tests }: TestGroup) => {
      test.each<Case>(tests)(
        "$name",
        ({ template, want, context, partials, standard }: Case): void => {
          // Skip tests for non standard features.
          if (!standard) return;

          const engine = new Liquid({
            fs: new MapFS(Object.entries(partials)),
            relativeReference: false,
          });

          const result = engine.parseAndRenderSync(template, context);
          expect(result).toBe(want);
        }
      );
    }
  );
});

// TODO: `{{ partial }}` is shopify specific
// TODO: mark `template` drop as shopify specific
