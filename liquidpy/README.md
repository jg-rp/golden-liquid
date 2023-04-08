# Liquidpy Version 0.8.0

```
pipenv install
pipenv run pytest -q --tb=no
```

```
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.abs_filter > negative string float] - TypeError: bad operand type for abs(): 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.abs_filter > negative string integer] - TypeError: bad operand type for abs(): 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.abs_filter > not a string, int or float] - TypeError: bad operand type for abs(): 'dict'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.abs_filter > positive string float] - TypeError: bad operand type for abs(): 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.abs_filter > positive string integer] - TypeError: bad operand type for abs(): 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.abs_filter > string not a number] - TypeError: bad operand type for abs(): 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.abs_filter > undefined left value] - TypeError: bad operand type for abs(): 'Undefined'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.assign_tag > assign to variable with a hyphen] - jinja2.exceptions.TemplateSyntaxError: expected token '=', got '-'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_least_filter > argument string not a number] - TypeError: '>' not supported between instances of 'str' and 'int'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_least_filter > left value not a number] - TypeError: '>' not supported between instances of 'int' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_least_filter > left value not a number negative argument] - TypeError: '>' not supported between instances of 'int' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_least_filter > positive string > arg] - TypeError: '>' not supported between instances of 'int' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_least_filter > too many args] - Failed: DID NOT RAISE <class 'Exception'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_least_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_least_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_most_filter > left value not a number] - TypeError: '<' not supported between instances of 'int' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_most_filter > positive string > arg] - TypeError: '<' not supported between instances of 'int' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_most_filter > too many args] - Failed: DID NOT RAISE <class 'Exception'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_most_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.at_most_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_decode_filter > from string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_decode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_decode_filter > from string with URL unsafe] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_decode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_decode_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_decode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_encode_filter > from string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_encode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_encode_filter > from string with URL unsafe] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_encode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_encode_filter > not a string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_encode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_encode_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_encode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_url_safe_decode_filter > from string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_decode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_url_safe_decode_filter > from string with URL unsafe] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_decode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_url_safe_decode_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_decode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_url_safe_encode_filter > from string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_encode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_url_safe_encode_filter > from string with URL unsafe] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_encode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_url_safe_encode_filter > not a string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_encode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.base64_url_safe_encode_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_encode'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.capture_tag > capture into a variable with a hyphen] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got '-'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > comma separated when expression] - AssertionError: assert '' == 'bar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > evaluate multiple matching blocks] - AssertionError: assert 'foo' == 'foobarbar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > mix or and comma separated when expression0] - AssertionError: assert '' == 'barbar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > mix or and comma separated when expression1] - AssertionError: assert '' == 'barbar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > no whens] - jinja2.exceptions.TemplateSyntaxError: expected token 'when', got 'else'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > no whens or default] - jinja2.exceptions.TemplateSyntaxError: expected token 'when', got 'endcase'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.case_tag > or separated when expression] - AssertionError: assert '' == 'bar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ceil_filter > not a string, int or float] - TypeError: float() argument must be a string or a number, not 'dict'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ceil_filter > string not a number] - ValueError: could not convert string to float: 'hello'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ceil_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.compact_filter > array of objects with key property] - TypeError: compact() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.compact_filter > empty array] - TypeError: 'EmptyDrop' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.compact_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.concat_filter > left value is not array-like] - TypeError: descriptor '__add__' requires a 'list' object but received a 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.concat_filter > nested left value gets flattened] - assert "['a', 'x']#[..., ['z']]]#c#d" == 'a#x#b#y#z#c#d'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.concat_filter > range literal concat filter left value] - TypeError: descriptor '__add__' requires a 'list' object but received a 'range'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.concat_filter > undefined left value] - TypeError: descriptor '__add__' requires a 'list' object but received a 'Undefined'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > changing variable name] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ':'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > different items] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > integers] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > multiple undefined variable names] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ':'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with different items] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with different number of arguments] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ':'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with growing number of arguments] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ':'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > named with shrinking number of arguments] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ':'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > no identifier] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > undefined variable names mixed with no name] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ':'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > variable name] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ':'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.cycle_tag > with identifier] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.date_filter > negative timestamp string] - dateutil.parser._parser.ParserError: year 1152098955 is out of range: -1152098955
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.date_filter > timestamp string] - dateutil.parser._parser.ParserError: year 1152098955 is out of range: 1152098955
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.date_filter > undefined argument] - TypeError: strftime() argument 1 must be str, not Undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.date_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.decrement_tag > increment and decrement named counter] - AssertionError: assert '-1 -2 -1' == '-1 -2 -2'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.decrement_tag > named counter] - AssertionError: assert '-1 -2' == '-1-1 -2-2'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.default_filter > allow false] - AssertionError: assert 'False' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.default_filter > allow false from context] - AssertionError: assert 'False' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.default_filter > empty array] - AssertionError: assert '[]' == 'foo'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.default_filter > empty object] - AssertionError: assert '{}' == 'foo'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.default_filter > false] - AssertionError: assert 'False' == 'foo'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.default_filter > false keyword argument before positional] - jinja2.exceptions.TemplateSyntaxError: invalid syntax for function call expression
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.default_filter > missing argument] - TypeError: default() missing 1 required positional argument: 'deft'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.default_filter > not empty object] - AssertionError: assert '(g,r)' == '(greeting,hello)'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.default_filter > true keyword argument before positional] - jinja2.exceptions.TemplateSyntaxError: invalid syntax for function call expression
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.divided_by_filter > float value and integer arg] - AssertionError: assert '4.0' == '4.5'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.divided_by_filter > left value is an empty string] - TypeError: unsupported operand type(s) for //: 'str' and 'int'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.divided_by_filter > not a string, int or float] - TypeError: unsupported operand type(s) for //: 'dict' and 'int'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.divided_by_filter > string not a number] - TypeError: unsupported operand type(s) for /: 'str' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.divided_by_filter > string value and argument] - TypeError: unsupported operand type(s) for /: 'str' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.divided_by_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.downcase_filter > not a string] - TypeError: descriptor 'lower' for 'str' objects doesn't apply to a 'int' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.downcase_filter > undefined left value] - TypeError: descriptor 'lower' for 'str' objects doesn't apply to a 'Undefined' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > access an array item by index] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > access an array item by negative index] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > access an undefined variable by index] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > access array item by index stored in a local variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > assign a variable the value of an existing variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > dump an array from the global context] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > nothing to echo] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > render a float literal] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > render a global identifier with a filter] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > render a string literal] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > render a variable from the global namespace] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > render a variable from the local namespace] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > render an integer literal] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > render an undefined property] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > render an undefined variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.echo_tag > traverse variables with bracketed identifiers] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.escape_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.escape_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.escape_filter > unexpected argument] - Failed: DID NOT RAISE <class 'Exception'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.escape_once_filter > not a string] - TypeError: argument of type 'int' is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.escape_once_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.first_filter > first of a hash] - AssertionError: assert '(b,)' == '(b,1)'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.first_filter > first of a string] - AssertionError: assert 'h' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.first_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.floor_filter > not a string, int or float] - TypeError: float() argument must be a string or a number, not 'dict'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.floor_filter > string not a number] - ValueError: could not convert string to float: 'hello'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.floor_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > access parentloop] - jinja2.exceptions.UndefinedError: 'jinja2.runtime.LoopContext object' has no attribute 'parentloop'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > assign inside loop] - AssertionError: assert '' == 'garden'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > blank empty loops] - AssertionError: assert '                      ' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > break] - AssertionError: assert 'no images' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > comma separated arguments] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'integer'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > continue a loop] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > continue a loop over a changing array] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > continue a loop over an assigned range] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > continue from a limit that is greater than length] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > continue from a range expression] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > continue with changing loop var] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > first and last with an offset and limit] - AssertionError: assert 'garden True ...e False True ' == 'garden true ...e false true '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > first and last with offset continue] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > forloop goes out of scope] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > forloop name] - AssertionError: assert '' == 'tag-product.tags'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > forloop name of a range] - AssertionError: assert '' == 'i-(1..3)'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > forloop.first] - AssertionError: assert 'True False ' == 'true false '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > forloop.last] - AssertionError: assert 'False True ' == 'false true '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > limit is a string] - jinja2.exceptions.TemplateSyntaxError: Expected an integer or a variable as argument for 'limit'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > loop over a string literal] - AssertionError: assert 'h e l l o ' == 'hello '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > loop over a string variable] - AssertionError: assert 'h e l l o ' == 'hello '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > loop over range with float start] - jinja2.exceptions.TemplateSyntaxError: expected name or number
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > nothing to continue from] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > offset continue forloop length] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > offset continue from a broken loop] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > offset continue from a broken loop with preceding limit] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > offset continue twice with changing limit] - jinja2.exceptions.UndefinedError: 'continue' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > offset continue twice with limit] - jinja2.exceptions.UndefinedError: 'continue' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > offset continue twice with no second limit] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > offset continue without preceding loop] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > offset is a string] - jinja2.exceptions.TemplateSyntaxError: Expected an integer or a variable as argument for 'offset'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > parent's parentloop] - jinja2.exceptions.UndefinedError: 'jinja2.runtime.LoopContext object' has no attribute 'parentloop'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > parentloop goes out of scope] - jinja2.exceptions.UndefinedError: 'jinja2.runtime.LoopContext object' has no attribute 'parentloop'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > parentloop is normally undefined] - jinja2.exceptions.UndefinedError: 'jinja2.runtime.LoopContext object' has no attribute 'parentloop'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > range loop using identifier] - jinja2.exceptions.TemplateSyntaxError: expected name or number
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > share outer scope] - AssertionError: assert 'hello' == '3'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > simple hash loop] - AssertionError: assert 't i d e ' == 'title foo description bar '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.for_tag > some comma separated arguments] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ','
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > capture hyphens] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got '-'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > capture only digits] - jinja2.exceptions.TemplateSyntaxError: can't assign to 'const'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > decrement with a hyphen] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got '-'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > hyphen in for loop target] - jinja2.exceptions.UndefinedError: 'f' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > hyphen in for loop variable] - jinja2.exceptions.TemplateSyntaxError: expected token 'in', got '-'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > hyphens] - jinja2.exceptions.TemplateSyntaxError: expected token '=', got '-'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > increment with a hyphen] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got '-'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > only digits] - jinja2.exceptions.TemplateSyntaxError: can't assign to 'const'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > trailing question mark in for loop target] - jinja2.exceptions.TemplateSyntaxError: unexpected char '?' at 15
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > trailing question mark in for loop variable] - jinja2.exceptions.TemplateSyntaxError: unexpected char '?' at 8
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.identifiers > trailing question mark output] - jinja2.exceptions.TemplateSyntaxError: unexpected char '?' at 6
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > 0.0 is truthy] - AssertionError: assert 'Goodbye' == 'Hello'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > alternate not equal condition] - jinja2.exceptions.TemplateSyntaxError: unexpected '>'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > blocks that contain only whitespace and comments are not rendered] - AssertionError: assert '  ' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > blocks that contain only whitespace are not rendered] - AssertionError: assert '  ' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > logical operators are right associative] - AssertionError: assert 'hello' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > one is not equal to true] - AssertionError: assert 'Hello' == 'Goodbye'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > zero is not equal to false] - AssertionError: assert 'Hello' == 'Goodbye'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.if_tag > zero is truthy] - AssertionError: assert 'Goodbye' == 'Hello'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > change from assign] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > changed from initial state] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > no change from assign] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > not changed from initial state] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.ifchanged_tag > within for loop] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'. Jinja was looking for the following tags: 'endfor' or 'else'. The innermost block that needs to be closed is 'for'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.illegal > no addition operator] - Failed: DID NOT RAISE <class 'Exception'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.illegal > no multiplication operator] - Failed: DID NOT RAISE <class 'Exception'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.illegal > no subtraction operator] - Failed: DID NOT RAISE <class 'Exception'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > assign persists in outer scope] - AssertionError: assert 'Hello, Holly ' == 'Hello, Holly Smith'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > assign to a keyword argument] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ','
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > bound array variable] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'for'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > bound variable] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'with'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > bound variable does not exist] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'with'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > bound variable with alias] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'with'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > break from include] -   File "<template>", line 19
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > break from nested include] -   File "<template>", line 12
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > counter from outer scope] - AssertionError: assert '0 1 1' == '0 1 2'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > keyword arguments go out of scope] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ','
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > some keyword arguments] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ','
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > some keyword arguments with float literals] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'foo'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > some keyword arguments with range literal] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'foo'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.include_tag > some keyword arguments without leading comma] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'foo'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.increment_tag > incrementing counter renders before incrementing] - AssertionError: assert '0 ' == '0 1'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.increment_tag > named counters are in scope for subsequent expressions] - jinja2.exceptions.UndefinedError: 'foo' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > can't comment tags] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 4
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > empty] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 2
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > liquid tag] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 13
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > lots of hashes in a liquid tag] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 12
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > multiple lines] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 6
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > no padding after the hash] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 2
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > no whitespace control no padding] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 2
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > no whitespace control with padding] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 3
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > with whitespace control and padding] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 4
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.inline_comment_tag > with whitespace control no padding] - jinja2.exceptions.TemplateSyntaxError: unexpected char '#' at 3
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.join_filter > joining a string is a noop] - AssertionError: assert 'a#,#b' == 'a,b'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.join_filter > joining an int is a noop] - TypeError: 'int' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.join_filter > missing argument defaults to a space] - AssertionError: assert 'ab' == 'a b'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.join_filter > too many arguments] - Failed: DID NOT RAISE <class 'Exception'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.last_filter > last of a hash] - AssertionError: assert 'c' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.last_filter > last of a string] - AssertionError: assert 'o' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.last_filter > left value not an array] - TypeError: 'int' object is not reversible
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > carriage return and newline terminated tags] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > empty liquid tag] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > multi-line comment tag] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > nested liquid] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'. Jinja was looking for the following tags: 'elif' or 'elsif' or 'else' or 'endif'. The innermost block that needs to be closed is 'if'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > newline terminated tags] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > only whitespace] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > reference test #2] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > reference test #3] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > reference test #4] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > single line comment tag] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.liquid_tag > whitespace control] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.lstrip_filter > left and right padded] - AssertionError: assert 'hello  \t\n ' == 'hello  \t\r\n '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.lstrip_filter > not a string] - TypeError: descriptor 'lstrip' for 'str' objects doesn't apply to a 'int' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.lstrip_filter > right padded] - AssertionError: assert 'hello \t\n  ' == 'hello \t\r\n  '
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.lstrip_filter > undefined left value] - TypeError: descriptor 'lstrip' for 'str' objects doesn't apply to a 'Undefined' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.map_filter > array containing a non object] - Failed: DID NOT RAISE <class 'Exception'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.map_filter > missing property] - AssertionError: assert 'foo#bar#None' == 'foo#bar#'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.map_filter > undefined argument] - TypeError: getattr(): attribute name must be string
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.minus_filter > arg string not a number] - TypeError: unsupported operand type(s) for -: 'str' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.minus_filter > float value and float arg] - AssertionError: assert '7.8999999999999995' == '7.9'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.minus_filter > not a string, int or float] - TypeError: unsupported operand type(s) for -: 'dict' and 'int'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.minus_filter > string not a number] - TypeError: unsupported operand type(s) for -: 'str' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.minus_filter > string value and string arg] - TypeError: unsupported operand type(s) for -: 'str' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.minus_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.minus_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.modulo_filter > float value and float arg] - AssertionError: assert '3.0999999999999996' == '3.1'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.modulo_filter > not a string, int or float] - TypeError: unsupported operand type(s) for %: 'dict' and 'int'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.modulo_filter > string not a number] - TypeError: not all arguments converted during string formatting
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.modulo_filter > string value and argument] - TypeError: not all arguments converted during string formatting
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.modulo_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.newline_to_br_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.newline_to_br_filter > reference implementation test 1] - AssertionError: assert 'a<br />b<br />c' == 'a<br />\nb<br />\nc'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.newline_to_br_filter > reference implementation test 2] - AssertionError: assert 'a<br />b<br />c' == 'a<br />\nb<br />\nc'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.newline_to_br_filter > string with newlines] - AssertionError: assert '- apples<br ...oranges<br />' == '- apples<br ...anges<br />\n'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.newline_to_br_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > access an undefined variable by index] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > bracketed variable resolves to a string without leading identifier] - assert "['hello']" == 'goodbye'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > chained bracketed identifier index no dot] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of print statement', got 'title'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > chained identifier dot separated index] - Failed: DID NOT RAISE <class 'Exception'>
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > nested bracketed variable resolving to a string] - assert "['foo']" == 'bar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > render a default given a literal false] - AssertionError: assert 'False' == 'bar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > render a default given a literal false with 'allow false' equal to false] - AssertionError: assert 'False' == 'bar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > render a default given a literal false with 'allow false' equal to true] - AssertionError: assert 'False' == 'false'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > render a range object that uses a float] - jinja2.exceptions.TemplateSyntaxError: expected name or number
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > render nil] - AssertionError: assert 'None' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.output_statement > unexpected left value for the `join` filter passes through] - TypeError: 'int' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.plus_filter > arg string not a number] - AssertionError: assert '10foo' == '10'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.plus_filter > not a string, int or float] - TypeError: unsupported operand type(s) for +: 'dict' and 'int'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.plus_filter > string not a number] - AssertionError: assert 'foo2.0' == '2.0'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.plus_filter > string value and string arg] - AssertionError: assert '10.12.2' == '12.3'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.plus_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.plus_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.range_objects > end is not a number] - TypeError: can only concatenate str (not "int") to str
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.range_objects > start is not a number] - TypeError: 'str' object cannot be interpreted as an integer
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_filter > argument not a string] - TypeError: replace() argument 1 must be str, not int
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_filter > undefined argument] - TypeError: replace() argument 1 must be str, not Undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_first_filter > argument not a string] - TypeError: replace() argument 1 must be str, not int
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_first_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_first_filter > undefined argument] - TypeError: replace() argument 1 must be str, not Undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_first_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_last_filter > argument not a string] - jinja2.exceptions.TemplateAssertionError: No filter named 'remove_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_last_filter > not a string] - jinja2.exceptions.TemplateAssertionError: No filter named 'remove_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_last_filter > remove substrings] - jinja2.exceptions.TemplateAssertionError: No filter named 'remove_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_last_filter > undefined argument] - jinja2.exceptions.TemplateAssertionError: No filter named 'remove_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.remove_last_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'remove_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > assign to keyword argument] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > assigned variables do not leak into outer scope] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > bound array variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > bound variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > bound variable does not exist] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > bound variable with alias] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > decrement is isolated between renders] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > for loop variables go out of scope] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'. Jinja was looking for the following tags: 'endfor' or 'else'. The innermost block that needs to be closed is 'for'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > forloop helper] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > increment is isolated between renders] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > parent variables go out of scope] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > render loops can't access parentloop] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'. Jinja was looking for the following tags: 'endfor' or 'else'. The innermost block that needs to be closed is 'for'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > render loops don't add parentloop] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > some keyword arguments] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > some keyword arguments including a range literal] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > some keyword arguments no leading coma] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.render_tag > string literal name] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_filter > argument not a string] - TypeError: replace() argument 1 must be str, not int
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_filter > left value is an object] - TypeError: descriptor 'replace' for 'str' objects doesn't apply to a 'dict' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_filter > missing argument] - TypeError: replace expected at least 2 arguments, got 1
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_filter > not a string] - TypeError: descriptor 'replace' for 'str' objects doesn't apply to a 'int' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_filter > undefined first argument] - TypeError: replace() argument 1 must be str, not Undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_filter > undefined left value] - TypeError: descriptor 'replace' for 'str' objects doesn't apply to a 'Undefined' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_filter > undefined second argument] - TypeError: replace() argument 2 must be str, not Undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_first_filter > argument not a string] - TypeError: replace() argument 1 must be str, not int
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_first_filter > missing argument] - TypeError: replace_first() missing 1 required positional argument: 'new'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_first_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_first_filter > undefined first argument] - TypeError: replace() argument 1 must be str, not Undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_first_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_first_filter > undefined second argument] - TypeError: replace() argument 2 must be str, not Undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_last_filter > argument not a string] - jinja2.exceptions.TemplateAssertionError: No filter named 'replace_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_last_filter > not a string] - jinja2.exceptions.TemplateAssertionError: No filter named 'replace_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_last_filter > replace substrings] - jinja2.exceptions.TemplateAssertionError: No filter named 'replace_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_last_filter > undefined first argument] - jinja2.exceptions.TemplateAssertionError: No filter named 'replace_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_last_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'replace_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.replace_last_filter > undefined second argument] - jinja2.exceptions.TemplateAssertionError: No filter named 'replace_last'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.reverse_filter > array of things] - AssertionError: assert '{}#[]#1#b#a' == '{}#1#b#a'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.reverse_filter > left value not an array] - jinja2.exceptions.FilterArgumentError: argument must be iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > argument is a float] - TypeError: 'float' object cannot be interpreted as an integer
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > argument is a negative] - AssertionError: assert '0.0' == '0'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > argument is a string] - TypeError: 'str' object cannot be interpreted as an integer
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > argument is a string representation of an integer] - TypeError: 'str' object cannot be interpreted as an integer
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > argument is a string representation of zero] - TypeError: 'str' object cannot be interpreted as an integer
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > argument is a zero] - AssertionError: assert '6.0' == '6'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > decimal places] - TypeError: type str doesn't define __round__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > float as a string] - TypeError: type str doesn't define __round__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > float round down] - AssertionError: assert '5.0' == '5'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > float round up] - AssertionError: assert '6.0' == '6'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > string argument] - TypeError: 'str' object cannot be interpreted as an integer
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > undefined argument] - TypeError: 'Undefined' object cannot be interpreted as an integer
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.round_filter > undefined left value] - TypeError: type Undefined doesn't define __round__ method
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.rstrip_filter > left and right padded] - AssertionError: assert ' \t\n  hello' == ' \t\r\n  hello'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.rstrip_filter > left padded] - AssertionError: assert ' \t\n  hello' == ' \t\r\n  hello'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.rstrip_filter > not a string] - TypeError: descriptor 'rstrip' for 'str' objects doesn't apply to a 'int' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.rstrip_filter > undefined left value] - TypeError: descriptor 'rstrip' for 'str' objects doesn't apply to a 'Undefined' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.slice_filter > first argument is a string] - TypeError: '<' not supported between instances of 'str' and 'int'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.slice_filter > not a string] - TypeError: 'int' object is not subscriptable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.slice_filter > second argument is a string] - TypeError: unsupported operand type(s) for +: 'int' and 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.slice_filter > undefined second argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_filter > argument is undefined] - TypeError: sort() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_filter > array of objects] - TypeError: sort() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_filter > array of objects with missing key] - TypeError: sort() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_filter > empty array] - TypeError: 'EmptyDrop' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_filter > left value is undefined] - TypeError: 'EmptyDrop' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_filter > sort a string] - AssertionError: assert '4#A#B#a#z' == 'BzAa4'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_natural_filter > argument is undefined] - TypeError: sort_natural() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_natural_filter > array of objects with a key] - TypeError: sort_natural() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_natural_filter > array of objects with a key gets stringified] - TypeError: sort_natural() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_natural_filter > array of objects with a missing key] - TypeError: sort_natural() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_natural_filter > array of strings with a nul] - TypeError: descriptor 'casefold' for 'str' objects doesn't apply to a 'NoneType' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_natural_filter > empty array] - TypeError: 'EmptyDrop' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_natural_filter > incompatible types] - TypeError: descriptor 'casefold' for 'str' objects doesn't apply to a 'dict' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.sort_natural_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.special > first of an array] - AssertionError: assert '' == '3'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.special > first of an object] - AssertionError: assert '' == 'a#1'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.special > last of an array] - AssertionError: assert '' == '1'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.special > size of an object with a size property] - AssertionError: assert '1' == '99'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.special > size of undefined] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.split_filter > argument not a string] - TypeError: must be str or None, not int
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.split_filter > not a string] - AttributeError: 'int' object has no attribute 'split'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.split_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.strip_filter > not a string] - TypeError: descriptor 'strip' for 'str' objects doesn't apply to a 'int' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.strip_filter > undefined left value] - TypeError: descriptor 'strip' for 'str' objects doesn't apply to a 'Undefined' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.strip_html_filter > not a string] - TypeError: expected string or bytes-like object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.strip_html_filter > script block] - assert "document.wri...some stuff');" == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.strip_html_filter > style block] - AssertionError: assert 'foo bar' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.strip_html_filter > undefined left value] - TypeError: expected string or bytes-like object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.strip_newlines_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.strip_newlines_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > cols is a float] - jinja2.exceptions.TemplateSyntaxError: Expected an integer or a variable as argument for 'cols'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > cols is a string] - jinja2.exceptions.TemplateSyntaxError: Expected an integer or a variable as argument for 'cols'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > limit is a string] - jinja2.exceptions.TemplateSyntaxError: Expected an integer or a variable as argument for 'limit'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > no cols param] - jinja2.exceptions.UndefinedError: 'tablerowloop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > offset is a string] - jinja2.exceptions.TemplateSyntaxError: Expected an integer or a variable as argument for 'offset'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > one row] - assert '<tr class="r...ag4</td></tr>' == '<tr class="r...4</td></tr>\n'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > one row with limit] - assert '<tr class="r...ag2</td></tr>' == '<tr class="r...2</td></tr>\n'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > one row with offset] - assert '<tr class="r...ag4</td></tr>' == '<tr class="r...4</td></tr>\n'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > two column odd range] - jinja2.exceptions.UndefinedError: 'tablerowloop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > two column odd range row numbers] - jinja2.exceptions.UndefinedError: 'tablerowloop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > two column range] - jinja2.exceptions.UndefinedError: 'tablerowloop' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.tablerow_tag > two columns] - assert '<tr class="r...ag4</td></tr>' == '<tr class="r...4</td></tr>\n'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.times_filter > string times string] - TypeError: can't multiply sequence by non-int of type 'str'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.times_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.times_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.truncate_filter > default length is 50] - TypeError: truncate() missing 1 required positional argument: 'length'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.truncate_filter > not a string] - TypeError: object of type 'int' has no len()
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.truncate_filter > undefined second argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.truncatewords_filter > not a string] - AttributeError: 'int' object has no attribute 'split'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.truncatewords_filter > number of words defaults to 15] - TypeError: truncatewords() missing 1 required positional argument: 'length'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.truncatewords_filter > reference implementation test 2] - TypeError: can only concatenate str (not "int") to str
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.truncatewords_filter > reference implementation test 5] - AssertionError: assert '...' == 'one...'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.truncatewords_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.truncatewords_filter > undefined second argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.uniq_filter > array of objects with key property] - TypeError: uniq() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.uniq_filter > array of objects with missing key property] - TypeError: uniq() takes 1 positional argument but 2 were given
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.uniq_filter > empty array] - TypeError: 'EmptyDrop' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.uniq_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.uniq_filter > left value is undefined] - TypeError: 'EmptyDrop' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.uniq_filter > unhashable items] - AssertionError: assert 'a#b#[]#{}' == 'a#b#{}'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > blocks that contain only whitespace are not rendered] - AssertionError: assert '  ' == ''
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > conditional alternative block] - AssertionError: assert '' == 'bar'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > conditional alternative block with default] - AssertionError: assert 'bar' == 'hello'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > one is not equal to true] - AssertionError: assert 'Goodbye' == 'Hello'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > zero is not equal to false] - AssertionError: assert 'Goodbye' == 'Hello'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.unless_tag > zero is truthy] - AssertionError: assert 'Hello' == 'Goodbye'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.upcase_filter > not a string] - TypeError: descriptor 'upper' for 'str' objects doesn't apply to a 'int' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.upcase_filter > undefined left value] - TypeError: descriptor 'upper' for 'str' objects doesn't apply to a 'Undefined' object
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.url_decode_filter > not a string] - TypeError: argument of type 'int' is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.url_decode_filter > some special URL characters] - AssertionError: assert 'email+addres...@example.com!' == 'email addres...@example.com!'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.url_decode_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.where_filter > array of hashes] - TypeError: where() missing 1 required positional argument: 'value'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.where_filter > array of hashes with a missing key] - AssertionError: assert '(t,i)' == '(title,bar)'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.where_filter > array of hashes with equality test] - AssertionError: assert '(t,i)' == '(title,bar)'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.where_filter > both arguments are undefined] - TypeError: getattr(): attribute name must be string
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.where_filter > first argument is undefined] - TypeError: where() missing 1 required positional argument: 'value'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.where_filter > left value is undefined] - TypeError: where() missing 1 required positional argument: 'value'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.where_filter > second argument is undefined] - TypeError: 'EmptyDrop' object is not iterable
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.where_filter > value is explicit nil] - AssertionError: assert '(b,)' == '(b,bar)'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.where_filter > value is false] - AssertionError: assert '(b,)' == '(b,false)'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > don't suppress whitespace only blocks containing echo] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'. Jinja was looking for the following tags: 'elif' or 'elsif' or 'else' or 'endif'. The innermost block that needs to be closed is 'if'.
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > suppress whitespace only case blocks] - AssertionError: assert '!\n    \n\n\n!' == '!!'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > suppress whitespace only if blocks] - AssertionError: assert '!\n\n\n\n\n\n    \n\n\n\n\n!' == '!!'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > suppress whitespace only unless blocks] - AssertionError: assert '!\n\n\n\n\n\n    \n\n\n\n\n!' == '!!'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > suppress whitespace surrounding a capture block] - AssertionError: assert '!\n\n\n\n!' == '!!'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > suppress whitespace surrounding an empty capture block] - AssertionError: assert '!\n\n\n\n!' == '!!'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > white space control with  carriage return, newline and spaces] - AssertionError: assert '\nWelcome back,  Holly!' == '\r\nWelcome back,  Holly!'
FAILED test_golden_liquid.py::test_render_liquid[liquid.golden.whitespace_control > white space control with carriage return and spaces] - AssertionError: assert '\nWelcome back,  Holly!' == '\rWelcome back,  Holly!'
427 failed, 394 passed in 1.76s
```
