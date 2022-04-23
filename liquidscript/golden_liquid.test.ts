import fs from "node:fs";

import { Environment, ObjectLoader } from "liquidscript";

type Case = {
  name: string;
  template: string;
  want: string;
  context: Record<string, unknown>;
  partials: Record<string, string>;
  error: boolean;
  strict: boolean;
};

type TestGroup = {
  name: string;
  tests: Case[];
};

const golden = JSON.parse(fs.readFileSync("../golden_liquid.json", "utf-8"));

describe.each<TestGroup>(golden.test_groups)(
  "$name",
  ({ tests }: TestGroup) => {
    test.each<Case>(tests)(
      "$name",
      ({ template, want, context, partials, error }: Case) => {
        const env = new Environment({
          loader: new ObjectLoader(partials),
        });

        if (error) {
          expect(() => env.fromString(template).renderSync(context)).toThrow();
        } else {
          const result = env.fromString(template).renderSync(context);
          expect(result).toBe(want);
        }
      }
    );
  }
);
