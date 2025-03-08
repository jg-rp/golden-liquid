import json
import pytest

from operator import attrgetter

from liquid.future import Environment
from liquid import Mode
from liquid.exceptions import Error
from liquid.builtin import DictLoader
from liquid.golden.case import Case


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
    mode = Mode.STRICT  # if case.strict else Mode.LAX
    env = Environment(loader=DictLoader(case.partials), tolerance=mode)

    if case.error:
        with pytest.raises(Error):
            template = env.from_string(case.template, globals=case.globals)
            template.render()

    else:
        template = env.from_string(case.template, globals=case.globals)
        result = template.render()
        assert result == case.expect
