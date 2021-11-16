import json
import pathlib
import sys

from typing import Mapping
from typing import NamedTuple

from liquid import golden


class GoldenCase(NamedTuple):
    name: str
    template: str
    want: str
    context: Mapping[str, object]
    partials: Mapping[str, str]
    standard: bool

    @property
    def context_as_json(self) -> str:
        return json.dumps(self.context)

    @property
    def partials_as_json(self) -> str:
        return json.dumps(self.partials)


def dump(fd):
    test_groups = []
    obj = {
        "version": "0.1.0",
        "test_groups": test_groups,
    }

    for group in golden.all:
        tests = []
        test_group = {"name": group.__name__, "tests": tests}
        for case in group.cases:
            test_group["tests"].append(
                {
                    "name": case.description,
                    "template": case.template,
                    "want": case.expect,
                    "context": case.globals,
                    "partials": case.partials,
                    "standard": case.standard,
                }
            )
        test_groups.append(test_group)

    json.dump(obj, fd, indent=4)


if __name__ == "__main__":
    dump(sys.stdout)
