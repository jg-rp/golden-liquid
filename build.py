"""Golden Liquid test suite build script.

Inspired by the JSONPath Compliance Test Suit.
https://github.com/jsonpath-standard/jsonpath-compliance-test-suite
"""

import argparse
import itertools
import json
import os
import sys
from collections import Counter
from pathlib import Path
from typing import Any

from jsonschema import validate

ROOT = Path(__file__).parent / "tests"
SCHEMA_PATH = Path(__file__).parent / "golden_liquid.schema.json"

with open(SCHEMA_PATH, encoding="utf-8") as fd:
    SCHEMA = json.load(fd)


def build(tags: list[str], require_all_tags: bool, exclude_tags: bool) -> int:
    """Build a golden test suite from files in ./tests. Writes to the standard output stream.

    Args:
        tags: A list of tags to filter tests by.
        require_all: If `True`, require all _tags_ to match.
        exclude_tags: If `True`, exclude tests matching _tags_ instead of including them.

    Return:
        The number of tests written to the standard output stream.
    """
    # Sort files, with files before folders
    files = sorted(ROOT.rglob("*.json"), key=lambda p: (len(p.parts), str(p)))
    tests = list(itertools.chain.from_iterable(load_tests(f) for f in files))

    if tags:
        if require_all_tags:
            tag_filter = lambda tags_: all(tag in tags_ for tag in tags)  # noqa: E731
        else:
            tag_filter = lambda tags_: any(tag in tags_ for tag in tags)  # noqa: E731

        tests = [t for t in tests if tag_filter(t.get("tags", [])) != exclude_tags]

    cts = {
        "description": "Golden Liquid test suite",
        "tests": tests,
    }

    validate(instance=cts, schema=SCHEMA)
    json.dump(cts, sys.stdout, indent=2)
    return len(tests)


def load_tests(path: Path) -> list[dict[str, Any]]:
    relative_path = path.relative_to(ROOT)
    parts = relative_path.with_suffix("").parts
    prefix = ", ".join(part.replace("_", " ") for part in parts)

    sys.stderr.write(f"Processing {relative_path} with prefix {prefix!r}{os.linesep}")

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


def dump_tags() -> None:
    """Dump a list of tags to the standard output stream, one per line."""
    tests: list[dict[str, Any]] = []

    for path in ROOT.rglob("*.json"):
        with open(path, encoding="utf8") as fd:
            tests.extend(json.load(fd)["tests"])

    tags = sorted(set(itertools.chain.from_iterable(t.get("tags", []) for t in tests)))
    sys.stdout.write(os.linesep.join(tags))
    sys.stdout.write(os.linesep)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Golden Liquid test suite build script."
    )

    parser.add_argument(
        "-t",
        "--tag",
        dest="tags",
        action="append",
        default=[],
        help="Select tests by tag. Can be used multiple times.",
    )

    parser.add_argument(
        "-a",
        "--require-all",
        action="store_true",
        help="Require all tags provided by -t or --tag to be present.",
    )

    parser.add_argument(
        "-e",
        "--exclude",
        action="store_true",
        help="Exclude tests with tags provided by -t or --tag instead of including them.",
    )

    parser.add_argument(
        "--list-tags",
        action="store_true",
        help=(
            "Write a list of all tags to the standard output stream instead of building a test suite. "
            "All other options are ignored if --list-tags is given."
        ),
    )

    args = parser.parse_args()

    if args.list_tags:
        dump_tags()
    else:
        sys.stderr.write(f"Building golden tests from {ROOT}{os.linesep}")
        sys.stderr.write(
            f"Filtering by tags ({len(args.tags)}): {args.tags}{os.linesep}"
        )
        sys.stderr.write(f"Require all tags: {args.require_all}{os.linesep}")
        sys.stderr.write(f"Exclude tags: {args.exclude}{os.linesep}")

        test_count = build(args.tags, args.require_all, args.exclude)
        sys.stderr.write(f"Wrote {test_count} tests to stdout.{os.linesep}")
