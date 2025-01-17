# Python Liquid2 - Version 0.1.0

Create a new Python environment and install dependencies from `requirements.txt`.

```
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Run tests with `pytest -q --tb=no`

```
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > evaluate multiple matching blocks]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > falsy when before and truthy when after else]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > falsy when before and truthy when after multiple else blocks]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > mix or and comma separated when expression]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > multiple else blocks]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > truthy and empty when block before else]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > truthy when before and after else]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > unexpected when token]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.concat_filter > left value is not array-like]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > changing variable name]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > multiple undefined variable names]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with different items]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with different number of arguments]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with growing number of arguments]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with shrinking number of arguments]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > undefined variable names mixed with no name]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > nothing to echo]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > loop over a string literal]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > loop over a string variable]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > loop over range with float start]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > capture only digits]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > only digits]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > trailing question mark in for loop target]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > trailing question mark in for loop variable]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > trailing question mark output]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > extra else blocks are ignored]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > extra elsif blocks are ignored]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > logical operators are right associative]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > change from assign]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > changed from initial state]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > no change from assign]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > not changed from initial state]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > within for loop]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.join_filter > joining a string is a noop]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > bare liquid tag in liquid tag]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > liquid tag in liquid tag]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > nested liquid in liquid tag]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > chained bracketed identifier index no dot]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > render a range object that uses a float]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_filter > sort a string]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.special > first of a string]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.special > last of a string]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > extra else blocks are ignored]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > extra elsif blocks are ignored]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > don't suppress whitespace only blocks containing output in unreachable blocks]
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > don't suppress whitespace only case blocks containing output]
46 failed, 842 passed in 2.11ss
```
