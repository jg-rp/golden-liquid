import json
import pytest
from dataclasses import dataclass
from dataclasses import field
from typing import Any
from typing import Dict

from operator import attrgetter

from liquid2.shopify import Environment
from liquid2.exceptions import LiquidError
from liquid2 import DictLoader


@dataclass
class Case:
    """Test case dataclass to help with table driven tests."""

    description: str
    template: str
    expect: str
    globals: Dict[str, Any] = field(default_factory=dict)
    partials: Dict[str, Any] = field(default_factory=dict)
    standard: bool = True
    error: bool = False
    strict: bool = False
    future: bool = False


def read_test_cases():
    with open("../golden_liquid.json", "r") as fd:
        data = json.load(fd)

    cases = []

    for group in data["test_groups"]:
        for test in group["tests"]:
            cases.append(
                Case(
                    description=f"{group['name']} > {test['name']}",
                    template=test["template"],
                    expect=test["want"],
                    globals=test["context"],
                    partials=test["partials"],
                    error=test["error"],
                )
            )

    return cases


@pytest.mark.parametrize("case", read_test_cases(), ids=attrgetter("description"))
def test_render_liquid(case: Case):
    env = Environment(loader=DictLoader(case.partials))

    if case.error:
        with pytest.raises(LiquidError):
            template = env.from_string(case.template, globals=case.globals)
            template.render()

    else:
        template = env.from_string(case.template, globals=case.globals)
        result = template.render()
        assert result == case.expect
