"""Golden Liquid test suite build script."""

import itertools
import json
import os
import sys
from collections import Counter
from pathlib import Path
from typing import Any

from jsonschema import validate

ROOT = Path(__file__).parent / "tests"
SCHEMA_PATH = Path(__file__).parent / "schema.json"

with open(SCHEMA_PATH, encoding="utf-8") as fd:
    SCHEMA = json.load(fd)


def build() -> None:
    # Sort files, with files before folders
    files = sorted(ROOT.rglob("*.json"), key=lambda p: (len(p.parts), str(p)))
    tests = list(itertools.chain.from_iterable(load_tests(f) for f in files))

    cts = {
        "description": "Golden Liquid test suite",
        "tests": tests,
    }

    validate(instance=cts, schema=SCHEMA)
    json.dump(cts, sys.stdout, indent=2)


def load_tests(path: Path) -> list[dict[str, Any]]:
    relative_path = path.relative_to(ROOT)
    parts = relative_path.with_suffix("").parts
    prefix = ", ".join(part.replace("_", " ") for part in parts)

    sys.stderr.write(f"Loading {relative_path} with prefix {prefix!r}{os.linesep}")

    with open(path, encoding="utf8") as fd:
        tests = json.load(fd)

    validate(instance=tests, schema=SCHEMA)

    # check for duplicate test names
    name_counter = Counter(t["name"] for t in tests["tests"])
    dupes = {name: count for name, count in name_counter.items() if count > 1}
    if dupes:
        buf = []
        for name, count in dupes.items():
            plural = "s" if count != 1 else ""
            buf.append(f"{name!r} appears {count} time{plural} in {relative_path}")
        raise Exception(os.linesep.join(buf))

    return [add_prefix(prefix, test) for test in tests["tests"]]


def add_prefix(prefix: str, test: dict[str, Any]) -> dict[str, Any]:
    name = prefix + ", " + test["name"]
    return {**test, "name": name}


if __name__ == "__main__":
    build()

# TODO: report tags
# TODO: CLI for targeting select tags only
