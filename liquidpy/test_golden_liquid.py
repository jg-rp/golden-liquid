import json
import pytest

from operator import attrgetter

from jinja2 import Environment
from jinja2 import ChainableUndefined
from jinja2 import DictLoader

from liquid import Liquid


class LaxUndefined(ChainableUndefined):
    def __str__(self):
        return ""

    def __int__(self):
        return 0

    def __float__(self):
        return 0.0

    def __len__(self):
        return 0


def read_test_cases():
    with open("../golden_liquid.json", "r") as fd:
        data = json.load(fd)

    cases = []

    for group in data["test_groups"]:
        for test in group["tests"]:
            test["group"] = group["name"]
            cases.append(test)

    return cases


def ids(case):
    return f"{case['group']} > {case['name']}"


@pytest.mark.parametrize("case", read_test_cases(), ids=ids)
def test_render_liquid(case):
    """"""
    # Note that liquidpy version 0.7.2 seems to ignore any DictLoader I pass to
    # `jinja2.Environment`, and `Liquid.from_env` does not accept a loader argument.
    # Hence the use of the `Liquid` constructor instead.
    env = Environment()
    loader = DictLoader(case["partials"])

    if case["error"]:
        with pytest.raises(Exception):
            template = Liquid(
                case["template"],
                env=env,
                from_file=False,
                filter_with_colon=True,
                loader=loader,
            )
            template.render(**case["context"])

    else:
        template = Liquid(
            case["template"],
            env=env,
            from_file=False,
            filter_with_colon=True,
            loader=loader,
        )

        result = template.render(**case["context"])
        assert result == case["want"]
