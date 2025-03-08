# Python Liquid2 - Version 0.3.0

Create a new Python environment and install dependencies from `requirements.txt`.

```
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Run tests with `pytest -q --tb=no`

```
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > evaluate multiple matching blocks] - AssertionError: assert 'foobar' == 'foobarbar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > falsy when before and truthy when after else] - liquid2.exceptions.LiquidSyntaxError: expected tag 'endcase', found 'when'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > falsy when before and truthy when after multiple else blocks] - liquid2.exceptions.LiquidSyntaxError: expected tag 'endcase', found 'else'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > mix or and comma separated when expression] - AssertionError: assert 'bar' == 'barbar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > multiple else blocks] - liquid2.exceptions.LiquidSyntaxError: expected tag 'endcase', found 'else'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > truthy and empty when block before else] - AssertionError: assert 'bar' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > truthy when before and after else] - liquid2.exceptions.LiquidSyntaxError: expected tag 'endcase', found 'when'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > unexpected when token] - liquid2.exceptions.LiquidSyntaxError: unexpected token AND_WORD
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.comment_tag > comment inside liquid tag] - liquid2.exceptions.LiquidSyntaxError: unclosed comment block detected
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.comment_tag > incomplete tags are not parsed] - Failed: DID NOT RAISE <class 'liquid2.exceptions.LiquidError'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.comment_tag > malformed tags are not parsed] - Failed: DID NOT RAISE <class 'liquid2.exceptions.LiquidError'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.concat_filter > left value is not array-like] - AssertionError: assert 'a#b#c#d' == 'ab#c#d'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > changing variable name] - AssertionError: assert '123' == '112'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > multiple undefined variable names] - AssertionError: assert '112' == '123'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with different items] - AssertionError: assert '172' == '183'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with different number of arguments] - AssertionError: assert '111' == '12'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with growing number of arguments] - AssertionError: assert '111' == '112'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with shrinking number of arguments] - AssertionError: assert '111' == '121'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > undefined variable names mixed with no name] - AssertionError: assert '111' == '121'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.doc_tag > doc text is not parsed] - liquid2.exceptions.LiquidSyntaxError: unexpected '.'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.doc_tag > docs containing unclosed output are ok] - liquid2.exceptions.LiquidSyntaxError: unexpected '{'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.doc_tag > docs containing unclosed tags are ok] - liquid2.exceptions.LiquidSyntaxError: unexpected '{'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.doc_tag > don't render docs] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'doc'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.doc_tag > whitespace control] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'doc'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > nothing to echo] - liquid2.exceptions.LiquidSyntaxError: missing expression
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_filter > array of hashes, with a nil] - liquid2.exceptions.LiquidTypeError: 'NoneType' object is not subscriptable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_filter > array of strings, default value] - AssertionError: assert 'x' == 'z'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_filter > array of strings, default value, no match] - AssertionError: assert 'x' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_filter > array of strings, substring match, default value] - AssertionError: assert 'x' == 'zoo'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_filter > hash input, default value, no match] - assert "{'z': 42}" == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_filter > mixed array, default value] - AssertionError: assert 'x' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_filter > string input, default value, match] - AssertionError: assert 'z' == 'zoo'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_filter > string input, string value, match] - AssertionError: assert '' == 'zoo'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_index_filter > array of hashes, explicit nil, match] - AssertionError: assert '0' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_index_filter > array of hashes, with a nil] - liquid2.exceptions.LiquidTypeError: 'NoneType' object is not subscriptable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_index_filter > array of strings, default value] - AssertionError: assert '0' == '2'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_index_filter > array of strings, default value, no match] - AssertionError: assert '0' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_index_filter > array of strings, substring match, default value] - AssertionError: assert '0' == '2'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_index_filter > hash input, default value, no match] - AssertionError: assert '0' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_index_filter > hash input, explicit nil, match] - AssertionError: assert '0' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_index_filter > mixed array, default value] - AssertionError: assert '0' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.find_index_filter > string input, string value, match] - AssertionError: assert '' == '0'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > loop over a string literal] - AssertionError: assert 'h e l l o ' == 'hello '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > loop over a string variable] - AssertionError: assert 'h e l l o ' == 'hello '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > loop over range with float start] - liquid2.exceptions.LiquidSyntaxError: expected an integer or variable to start a range expression, fo...
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > array of hashes, false property] - AssertionError: assert 'true' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > array of hashes, int property] - AssertionError: assert 'true' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > array of hashes, nil property] - AssertionError: assert 'true' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > array of hashes, with a nil] - liquid2.exceptions.LiquidTypeError: 'NoneType' object is not subscriptable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > array of ints, string argument, default value] - Failed: DID NOT RAISE <class 'liquid2.exceptions.LiquidError'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > array of strings, default value, no match] - AssertionError: assert 'true' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > hash input, default value, no match] - AssertionError: assert 'true' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > hash input, explicit nil, match] - AssertionError: assert 'true' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > mixed array, default value] - AssertionError: assert 'true' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.has_filter > string input, default value, no match] - AssertionError: assert 'true' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > capture only digits] - liquid2.exceptions.LiquidSyntaxError: expected an identifier, found INT
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > only digits] - liquid2.exceptions.LiquidSyntaxError: expected an identifier, found INT
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > trailing question mark in for loop target] - liquid2.exceptions.LiquidSyntaxError: expected 'reversed', 'offset' or 'limit'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > trailing question mark in for loop variable] - liquid2.exceptions.LiquidSyntaxError: expected IN, found QUESTION
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > trailing question mark output] - liquid2.exceptions.LiquidSyntaxError: unexpected token QUESTION
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > array contains false] - AssertionError: assert 'TRUE' == 'FALSE'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > array contains nil] - AssertionError: assert 'TRUE' == 'FALSE'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > array contains undefined] - AssertionError: assert 'TRUE' == 'FALSE'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > extra else blocks are ignored] - liquid2.exceptions.LiquidSyntaxError: expected tag 'endif', found 'else'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > extra elsif blocks are ignored] - liquid2.exceptions.LiquidSyntaxError: expected tag 'endif', found 'elsif'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > in is not a valid operator] - Failed: DID NOT RAISE <class 'liquid2.exceptions.LiquidError'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > logical operators are right associative] - AssertionError: assert 'hello' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > string contains undefined] - AssertionError: assert 'TRUE' == 'FALSE'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > change from assign] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'ifchanged'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > changed from initial state] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'ifchanged'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > no change from assign] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'ifchanged'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > not changed from initial state] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'ifchanged'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > within for loop] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'ifchanged'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.join_filter > joining a string is a noop] - AssertionError: assert 'a#,#b' == 'a,b'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > bare liquid tag in liquid tag] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'liquid'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > liquid tag in liquid tag] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'liquid'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > nested liquid in liquid tag] - liquid2.exceptions.LiquidSyntaxError: unexpected tag 'liquid'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > render a range object that uses a float] - liquid2.exceptions.LiquidSyntaxError: expected an integer or variable to start a range expression, fo...
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > whitespace between bracket notation] - liquid2.exceptions.LiquidSyntaxError: unexpected token PATH
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > whitespace between word and dot] - liquid2.exceptions.LiquidSyntaxError: unexpected '.'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.reject_filter > array containing null, default value] - liquid2.exceptions.LiquidTypeError: 'NoneType' object is not subscriptable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.reject_filter > array of strings, default value] - AssertionError: assert 'x, y, cat, ' == 'x, y, '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.reject_filter > first argument is undefined] - AssertionError: assert 'x, y, cat, ' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.reject_filter > string input becomes a single element array, no match] - AssertionError: assert 'f, o, o, b, a, r, ' == 'foobar, '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.reject_filter > string input becomes a single element array, substring match] - AssertionError: assert 'f, o, o, b, a, r, ' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_filter > sort a string] - AssertionError: assert '4#A#B#a#z' == 'BzAa4'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.special > first of a string] - AssertionError: assert 'h' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.special > last of a string] - AssertionError: assert 'o' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.split_filter > argument is a single space] - AssertionError: assert '#0a#1b\nc' == '#0a#1b#2c'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.split_filter > argument is false] - AssertionError: assert 'H#e#l#l#o# #t#h#e#r#e' == 'Hello there'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > extra else blocks are ignored] - liquid2.exceptions.LiquidSyntaxError: expected tag 'endunless', found 'else'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > extra elsif blocks are ignored] - liquid2.exceptions.LiquidSyntaxError: expected tag 'endunless', found 'elsif'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > don't suppress whitespace only blocks containing output in unreachable blocks] - AssertionError: assert '!\n\n\n\n\n\n!' == '!\n\n\n\n\n    \n\n\n\n\n!'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > don't suppress whitespace only case blocks containing output] - AssertionError: assert '!!' == '!\n    \n\n  !'
94 failed, 916 passed in 1.80s
```
