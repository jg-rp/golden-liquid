# Liquidpy Version 0.7.2

```
pipenv install
pipenv run pytest -q --tb=no
```

```
FAILED [liquid.golden.abs_filter > negative string float] - TypeError: bad operand type for abs(): 'str'
FAILED [liquid.golden.abs_filter > negative string integer] - TypeError: bad operand type for abs(): 'str'
FAILED [liquid.golden.abs_filter > not a string, int or float] - TypeError: bad operand type for abs(): 'dict'
FAILED [liquid.golden.abs_filter > positive string float] - TypeError: bad operand type for abs(): 'str'
FAILED [liquid.golden.abs_filter > positive string integer] - TypeError: bad operand type for abs(): 'str'
FAILED [liquid.golden.abs_filter > string not a number] - TypeError: bad operand type for abs(): 'str'
FAILED [liquid.golden.abs_filter > undefined left value] - TypeError: bad operand type for abs(): 'Undefined'
FAILED [liquid.golden.assign_tag > assign a range literal] - AssertionError: assert 'range(1, 4)' == '1..3'
FAILED [liquid.golden.at_least_filter > left value not a number] - TypeError: '>' not supported between instances of 'int' and 'str'
FAILED [liquid.golden.at_least_filter > positive string > arg] - TypeError: '>' not supported between instances of 'int' and 'str'
FAILED [liquid.golden.at_least_filter > too many args] - Failed: DID NOT RAISE <class 'Exception'>
FAILED [liquid.golden.at_least_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.at_least_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.at_most_filter > left value not a number] - TypeError: '<' not supported between instances of 'int' and 'str'
FAILED [liquid.golden.at_most_filter > positive string > arg] - TypeError: '<' not supported between instances of 'int' and 'str'
FAILED [liquid.golden.at_most_filter > too many args] - Failed: DID NOT RAISE <class 'Exception'>
FAILED [liquid.golden.at_most_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.at_most_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.base64_decode_filter > from string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_decode'.
FAILED [liquid.golden.base64_decode_filter > from string with URL unsafe] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_decode'.
FAILED [liquid.golden.base64_decode_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_decode'.
FAILED [liquid.golden.base64_encode_filter > from string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_encode'.
FAILED [liquid.golden.base64_encode_filter > from string with URL unsafe] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_encode'.
FAILED [liquid.golden.base64_encode_filter > not a string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_encode'.
FAILED [liquid.golden.base64_encode_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_encode'.
FAILED [liquid.golden.base64_url_safe_decode_filter > from string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_decode'.
FAILED [liquid.golden.base64_url_safe_decode_filter > from string with URL unsafe] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_decode'.
FAILED [liquid.golden.base64_url_safe_decode_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_decode'.
FAILED [liquid.golden.base64_url_safe_encode_filter > from string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_encode'.
FAILED [liquid.golden.base64_url_safe_encode_filter > from string with URL unsafe] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_encode'.
FAILED [liquid.golden.base64_url_safe_encode_filter > not a string] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_encode'.
FAILED [liquid.golden.base64_url_safe_encode_filter > undefined left value] - jinja2.exceptions.TemplateAssertionError: No filter named 'base64_url_safe_encode'.
FAILED [liquid.golden.capture_tag > capture into a variable with a hyphen] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got '-'
FAILED [liquid.golden.case_tag > comma separated when expression] - AssertionError: assert '' == 'bar'
FAILED [liquid.golden.case_tag > evaluate multiple matching blocks] - AssertionError: assert 'foo' == 'foobarbar'
FAILED [liquid.golden.case_tag > no whens] - jinja2.exceptions.TemplateSyntaxError: expected token 'when', got 'else'
FAILED [liquid.golden.case_tag > no whens or default] - jinja2.exceptions.TemplateSyntaxError: expected token 'when', got 'endcase'
FAILED [liquid.golden.ceil_filter > not a string, int or float] - TypeError: float() argument must be a string or a number, not 'dict'
FAILED [liquid.golden.ceil_filter > string not a number] - ValueError: could not convert string to float: 'hello'
FAILED [liquid.golden.ceil_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.compact_filter > array of objects with key property] - TypeError: compact() takes 1 positional argument but 2 were given
FAILED [liquid.golden.compact_filter > empty array] - TypeError: 'EmptyDrop' object is not iterable
FAILED [liquid.golden.compact_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED [liquid.golden.concat_filter > left value is not array-like] - TypeError: descriptor '__add__' requires a 'list' object but received a 'str'
FAILED [liquid.golden.concat_filter > nested left value gets flattened] - assert "['a', 'x']#[..., ['z']]]#c#d" == 'a#x#b#y#z#c#d'
FAILED [liquid.golden.concat_filter > range literal concat filter left value] - TypeError: descriptor '__add__' requires a 'list' object but received a 'range'
FAILED [liquid.golden.concat_filter > undefined left value] - TypeError: descriptor '__add__' requires a 'list' object but received a 'Undefined'
FAILED [liquid.golden.cycle_tag > different items] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED [liquid.golden.cycle_tag > integers] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED [liquid.golden.cycle_tag > no identifier] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED [liquid.golden.cycle_tag > with identifier] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED [liquid.golden.date_filter > undefined argument] - TypeError: strftime() argument 1 must be str, not Undefined
FAILED [liquid.golden.date_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.decrement_tag > increment and decrement named counter] - AssertionError: assert '-1 -2 -1' == '-1 -2 -2'
FAILED [liquid.golden.decrement_tag > named counter] - AssertionError: assert '-1 -2' == '-1-1 -2-2'
FAILED [liquid.golden.default_filter > allow false] - AssertionError: assert 'False' == 'false'
FAILED [liquid.golden.default_filter > empty array] - AssertionError: assert '[]' == 'foo'
FAILED [liquid.golden.default_filter > empty object] - AssertionError: assert '{}' == 'foo'
FAILED [liquid.golden.default_filter > false] - AssertionError: assert 'False' == 'foo'
FAILED [liquid.golden.default_filter > missing argument] - TypeError: default() missing 1 required positional argument: 'deft'
FAILED [liquid.golden.default_filter > nil] - AssertionError: assert 'None' == 'foo'
FAILED [liquid.golden.default_filter > not empty object] - AssertionError: assert '(g,r)' == '(greeting,hello)'
FAILED [liquid.golden.divided_by_filter > not a string, int or float] - TypeError: unsupported operand type(s) for //: 'dict' and 'int'
FAILED [liquid.golden.divided_by_filter > string not a number] - TypeError: unsupported operand type(s) for /: 'str' and 'str'
FAILED [liquid.golden.divided_by_filter > string value and argument] - TypeError: unsupported operand type(s) for /: 'str' and 'str'
FAILED [liquid.golden.divided_by_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.downcase_filter > not a string] - TypeError: descriptor 'lower' for 'str' objects doesn't apply to a 'int' object
FAILED [liquid.golden.downcase_filter > undefined left value] - TypeError: descriptor 'lower' for 'str' objects doesn't apply to a 'Undefined' object
FAILED [liquid.golden.echo_tag > access an array item by index] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > access an array item by negative index] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > access an undefined variable by index] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > access array item by index stored in a local variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > assign a variable the value of an existing variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > dump an array from the global context] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > render a float literal] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > render a global identifier with a filter] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > render a string literal] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > render a variable from the global namespace] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > render a variable from the local namespace] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > render an integer literal] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > render an undefined property] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > render an undefined variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.echo_tag > traverse variables with bracketed identifiers] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'echo'.
FAILED [liquid.golden.escape_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED [liquid.golden.escape_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.escape_filter > unexpected argument] - Failed: DID NOT RAISE <class 'Exception'>
FAILED [liquid.golden.escape_once_filter > not a string] - TypeError: argument of type 'int' is not iterable
FAILED [liquid.golden.escape_once_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.first_filter > first of a hash] - AssertionError: assert '(b,)' == '(b,1)'
FAILED [liquid.golden.first_filter > first of a string] - AssertionError: assert 'h' == ''
FAILED [liquid.golden.first_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED [liquid.golden.floor_filter > not a string, int or float] - TypeError: float() argument must be a string or a number, not 'dict'
FAILED [liquid.golden.floor_filter > string not a number] - ValueError: could not convert string to float: 'hello'
FAILED [liquid.golden.floor_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.for_tag > access parentloop] - jinja2.exceptions.UndefinedError: 'jinja2.runtime.LoopContext object' has no attribute 'parentloop'
FAILED [liquid.golden.for_tag > assign inside loop] - AssertionError: assert '' == 'garden'
FAILED [liquid.golden.for_tag > blank empty loops] - AssertionError: assert '                      ' == ''
FAILED [liquid.golden.for_tag > break] - AssertionError: assert 'no images' == ''
FAILED [liquid.golden.for_tag > continue a loop] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED [liquid.golden.for_tag > continue a loop over a changing array] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED [liquid.golden.for_tag > continue a loop over an assigned range] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED [liquid.golden.for_tag > continue from a limit that is greater than length] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED [liquid.golden.for_tag > continue from a range expression] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED [liquid.golden.for_tag > continue with changing loop var] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED [liquid.golden.for_tag > forloop goes out of scope] - jinja2.exceptions.UndefinedError: 'loop' is undefined
FAILED [liquid.golden.for_tag > forloop.first] - AssertionError: assert 'True False ' == 'true false '
FAILED [liquid.golden.for_tag > forloop.last] - AssertionError: assert 'False True ' == 'false true '
FAILED [liquid.golden.for_tag > loop over an existing range object] - AssertionError: assert 'range(1, 4)123123' == '1..3123123'
FAILED [liquid.golden.for_tag > loop over range with float start] - jinja2.exceptions.TemplateSyntaxError: expected name or number
FAILED [liquid.golden.for_tag > nothing to continue from] - TypeError: slice indices must be integers or None or have an __index__ method
FAILED [liquid.golden.for_tag > parent's parentloop] - jinja2.exceptions.UndefinedError: 'jinja2.runtime.LoopContext object' has no attribute 'parentloop'
FAILED [liquid.golden.for_tag > parentloop goes out of scope] - jinja2.exceptions.UndefinedError: 'jinja2.runtime.LoopContext object' has no attribute 'parentloop'
FAILED [liquid.golden.for_tag > parentloop is normally undefined] - jinja2.exceptions.UndefinedError: 'jinja2.runtime.LoopContext object' has no attribute 'parentloop'
FAILED [liquid.golden.for_tag > range loop using identifier] - jinja2.exceptions.TemplateSyntaxError: expected name or number
FAILED [liquid.golden.for_tag > simple hash loop] - AssertionError: assert 't i d e ' == 'title foo description bar '
FAILED [liquid.golden.if_tag > alternate not equal condition] - jinja2.exceptions.TemplateSyntaxError: unexpected '>'
FAILED [liquid.golden.if_tag > blocks that contain only whitespace and comments are not rendered] - AssertionError: assert '  ' == ''
FAILED [liquid.golden.if_tag > blocks that contain only whitespace are not rendered] - AssertionError: assert '  ' == ''
FAILED [liquid.golden.ifchanged_tag > changed from initial state] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'.
FAILED [liquid.golden.ifchanged_tag > no change from assign0] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'.
FAILED [liquid.golden.ifchanged_tag > no change from assign1] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'.
FAILED [liquid.golden.ifchanged_tag > not changed from initial state] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'.
FAILED [liquid.golden.ifchanged_tag > within for loop] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'ifchanged'. Jinja was looking for the following tags: 'endfor' or 'else'. ...
FAILED [liquid.golden.illegal_tag > no addition operator] - Failed: DID NOT RAISE <class 'Exception'>
FAILED [liquid.golden.illegal_tag > no multiplication operator] - Failed: DID NOT RAISE <class 'Exception'>
FAILED [liquid.golden.illegal_tag > no subtraction operator] - Failed: DID NOT RAISE <class 'Exception'>
FAILED [liquid.golden.include_tag > assign persists in outer scope] - AssertionError: assert 'Hello, Holly ' == 'Hello, Holly Smith'
FAILED [liquid.golden.include_tag > bound array variable] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'for'
FAILED [liquid.golden.include_tag > bound variable] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'with'
FAILED [liquid.golden.include_tag > bound variable does not exist] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'with'
FAILED [liquid.golden.include_tag > bound variable with alias] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'with'
FAILED [liquid.golden.include_tag > break from include] -   File "<template>", line 19
FAILED [liquid.golden.include_tag > break from nested include] -   File "<template>", line 12
FAILED [liquid.golden.include_tag > counter from outer scope] - AssertionError: assert '0 1 1' == '0 1 2'
FAILED [liquid.golden.include_tag > some keyword arguments] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got ','
FAILED [liquid.golden.include_tag > some keyword arguments with float literals] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'foo'
FAILED [liquid.golden.include_tag > some keyword arguments with range literal] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'foo'
FAILED [liquid.golden.include_tag > some keyword arguments without leading comma] - jinja2.exceptions.TemplateSyntaxError: expected token 'end of statement block', got 'foo'
FAILED [liquid.golden.increment_tag > incrementing counter renders before incrementing] - AssertionError: assert '0 ' == '0 1'
FAILED [liquid.golden.increment_tag > named counters are in scope for subsequent expressions] - jinja2.exceptions.UndefinedError: 'foo' is undefined
FAILED [liquid.golden.join_filter > joining a string is a noop] - AssertionError: assert 'a#,#b' == 'a,b'
FAILED [liquid.golden.join_filter > joining an int is a noop] - TypeError: 'int' object is not iterable
FAILED [liquid.golden.join_filter > missing argument defaults to a space] - AssertionError: assert 'ab' == 'a b'
FAILED [liquid.golden.join_filter > too many arguments] - Failed: DID NOT RAISE <class 'Exception'>
FAILED [liquid.golden.last_filter > last of a hash] - AssertionError: assert 'c' == ''
FAILED [liquid.golden.last_filter > last of a string] - AssertionError: assert 'o' == ''
FAILED [liquid.golden.last_filter > left value not an array] - TypeError: 'int' object is not reversible
FAILED [liquid.golden.liquid_tag > multiple tags] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'liquid'.
FAILED [liquid.golden.lstrip_filter > left and right padded] - AssertionError: assert 'hello  \t\n ' == 'hello  \t\r\n '
FAILED [liquid.golden.lstrip_filter > not a string] - TypeError: descriptor 'lstrip' for 'str' objects doesn't apply to a 'int' object
FAILED [liquid.golden.lstrip_filter > right padded] - AssertionError: assert 'hello \t\n  ' == 'hello \t\r\n  '
FAILED [liquid.golden.lstrip_filter > undefined left value] - TypeError: descriptor 'lstrip' for 'str' objects doesn't apply to a 'Undefined' object
FAILED [liquid.golden.map_filter > missing property] - AttributeError: 'dict' object has no attribute 'title'
FAILED [liquid.golden.map_filter > undefined argument] - TypeError: getattr(): attribute name must be string
FAILED [liquid.golden.minus_filter > arg string not a number] - TypeError: unsupported operand type(s) for -: 'str' and 'str'
FAILED [liquid.golden.minus_filter > float value and float arg] - AssertionError: assert '7.8999999999999995' == '7.9'
FAILED [liquid.golden.minus_filter > not a string, int or float] - TypeError: unsupported operand type(s) for -: 'dict' and 'int'
FAILED [liquid.golden.minus_filter > string not a number] - TypeError: unsupported operand type(s) for -: 'str' and 'str'
FAILED [liquid.golden.minus_filter > string value and string arg] - TypeError: unsupported operand type(s) for -: 'str' and 'str'
FAILED [liquid.golden.minus_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.minus_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.modulo_filter > float value and float arg] - AssertionError: assert '3.0999999999999996' == '3.1'
FAILED [liquid.golden.modulo_filter > not a string, int or float] - TypeError: unsupported operand type(s) for %: 'dict' and 'int'
FAILED [liquid.golden.modulo_filter > string not a number] - TypeError: not all arguments converted during string formatting
FAILED [liquid.golden.modulo_filter > string value and argument] - TypeError: not all arguments converted during string formatting
FAILED [liquid.golden.modulo_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.newline_to_br_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED [liquid.golden.newline_to_br_filter > reference implementation test 1] - AssertionError: assert 'a<br />b<br />c' == 'a<br />\nb<br />\nc'
FAILED [liquid.golden.newline_to_br_filter > reference implementation test 2] - AssertionError: assert 'a<br />b<br />c' == 'a<br />\nb<br />\nc'
FAILED [liquid.golden.newline_to_br_filter > string with newlines] - AssertionError: assert '- apples<br ...oranges<br />' == '- apples<br ...anges<br />\n'
FAILED [liquid.golden.newline_to_br_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.output_statement > access an undefined variable by index] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.output_statement > dump an array from the global context] - assert "['sports', 'garden']" == 'sportsgarden'
FAILED [liquid.golden.output_statement > render a default given a literal false] - AssertionError: assert 'False' == 'bar'
FAILED [liquid.golden.output_statement > render a default given a literal false with 'allow false' equal to false] - AssertionError: assert 'False' == 'bar'
FAILED [liquid.golden.output_statement > render a default given a literal false with 'allow false' equal to true] - AssertionError: assert 'False' == 'false'
FAILED [liquid.golden.output_statement > render a range object] - AssertionError: assert 'range(1, 6)' == '1..5'
FAILED [liquid.golden.output_statement > render a range object that uses a float] - jinja2.exceptions.TemplateSyntaxError: expected name or number
FAILED [liquid.golden.output_statement > render a range object that uses an identifier] - AssertionError: assert 'range(2, 6)' == '2..5'
FAILED [liquid.golden.output_statement > render nil] - AssertionError: assert 'None' == ''
FAILED [liquid.golden.output_statement > reverse a range] - AssertionError: assert '<range_itera...7fc0920459c0>' == '5432'
FAILED [liquid.golden.output_statement > unexpected left value for the `join` filter passes through] - TypeError: 'int' object is not iterable
FAILED [liquid.golden.plus_filter > arg string not a number] - AssertionError: assert '10foo' == '10'
FAILED [liquid.golden.plus_filter > not a string, int or float] - TypeError: unsupported operand type(s) for +: 'dict' and 'int'
FAILED [liquid.golden.plus_filter > string not a number] - AssertionError: assert 'foo2.0' == '2.0'
FAILED [liquid.golden.plus_filter > string value and string arg] - AssertionError: assert '10.12.2' == '12.3'
FAILED [liquid.golden.plus_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.plus_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.remove_filter > argument not a string] - TypeError: replace() argument 1 must be str, not int
FAILED [liquid.golden.remove_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED [liquid.golden.remove_filter > undefined argument] - TypeError: replace() argument 1 must be str, not Undefined
FAILED [liquid.golden.remove_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.remove_first_filter > argument not a string] - TypeError: replace() argument 1 must be str, not int
FAILED [liquid.golden.remove_first_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED [liquid.golden.remove_first_filter > undefined argument] - TypeError: replace() argument 1 must be str, not Undefined
FAILED [liquid.golden.remove_first_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.render_tag > assigned variables do not leak into outer scope] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > bound array variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > bound variable] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > bound variable does not exist] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > bound variable with alias] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > decrement is isolated between renders] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > for loop variables go out of scope] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'. Jinja was looking for the following tags: 'endfor...
FAILED [liquid.golden.render_tag > forloop helper] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > increment is isolated between renders] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > parent variables go out of scope] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > render loops can't access parentloop] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'. Jinja was looking for the following tags: 'endf...
FAILED [liquid.golden.render_tag > render loops don't add parentloop] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > some keyword arguments] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > some keyword arguments including a range literal] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > some keyword arguments no leading coma] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.render_tag > string literal name] - jinja2.exceptions.TemplateSyntaxError: Encountered unknown tag 'render'.
FAILED [liquid.golden.replace_filter > argument not a string] - TypeError: replace() argument 1 must be str, not int
FAILED [liquid.golden.replace_filter > missing argument] - TypeError: replace expected at least 2 arguments, got 1
FAILED [liquid.golden.replace_filter > not a string] - TypeError: descriptor 'replace' for 'str' objects doesn't apply to a 'int' object
FAILED [liquid.golden.replace_filter > undefined first argument] - TypeError: replace() argument 1 must be str, not Undefined
FAILED [liquid.golden.replace_filter > undefined left value] - TypeError: descriptor 'replace' for 'str' objects doesn't apply to a 'Undefined' object
FAILED [liquid.golden.replace_filter > undefined second argument] - TypeError: replace() argument 2 must be str, not Undefined
FAILED [liquid.golden.replace_first_filter > argument not a string] - TypeError: replace() argument 1 must be str, not int
FAILED [liquid.golden.replace_first_filter > missing argument] - TypeError: replace_first() missing 1 required positional argument: 'new'
FAILED [liquid.golden.replace_first_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED [liquid.golden.replace_first_filter > undefined first argument] - TypeError: replace() argument 1 must be str, not Undefined
FAILED [liquid.golden.replace_first_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.replace_first_filter > undefined second argument] - TypeError: replace() argument 2 must be str, not Undefined
FAILED [liquid.golden.reverse_filter > array of things] - AssertionError: assert '{}#[]#1#b#a' == '{}#1#b#a'
FAILED [liquid.golden.reverse_filter > left value not an array] - jinja2.exceptions.FilterArgumentError: argument must be iterable
FAILED [liquid.golden.round_filter > decimal places] - TypeError: type str doesn't define __round__ method
FAILED [liquid.golden.round_filter > float as a string] - TypeError: type str doesn't define __round__ method
FAILED [liquid.golden.round_filter > float round down] - AssertionError: assert '5.0' == '5'
FAILED [liquid.golden.round_filter > float round up] - AssertionError: assert '6.0' == '6'
FAILED [liquid.golden.round_filter > string argument] - TypeError: 'str' object cannot be interpreted as an integer
FAILED [liquid.golden.round_filter > undefined argument] - TypeError: 'Undefined' object cannot be interpreted as an integer
FAILED [liquid.golden.round_filter > undefined left value] - TypeError: type Undefined doesn't define __round__ method
FAILED [liquid.golden.rstrip_filter > left and right padded] - AssertionError: assert ' \t\n  hello' == ' \t\r\n  hello'
FAILED [liquid.golden.rstrip_filter > left padded] - AssertionError: assert ' \t\n  hello' == ' \t\r\n  hello'
FAILED [liquid.golden.rstrip_filter > not a string] - TypeError: descriptor 'rstrip' for 'str' objects doesn't apply to a 'int' object
FAILED [liquid.golden.rstrip_filter > undefined left value] - TypeError: descriptor 'rstrip' for 'str' objects doesn't apply to a 'Undefined' object
FAILED [liquid.golden.slice_filter > not a string] - TypeError: 'int' object is not subscriptable
FAILED [liquid.golden.slice_filter > slice a hash] - TypeError: unhashable type: 'slice'
FAILED [liquid.golden.slice_filter > undefined second argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.sort_filter > argument is undefined] - TypeError: sort() takes 1 positional argument but 2 were given
FAILED [liquid.golden.sort_filter > array of objects] - TypeError: sort() takes 1 positional argument but 2 were given
FAILED [liquid.golden.sort_filter > array of objects with missing key] - TypeError: sort() takes 1 positional argument but 2 were given
FAILED [liquid.golden.sort_filter > empty array] - TypeError: 'EmptyDrop' object is not iterable
FAILED [liquid.golden.sort_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED [liquid.golden.sort_filter > left value is undefined] - TypeError: 'EmptyDrop' object is not iterable
FAILED [liquid.golden.sort_natural_filter > argument is undefined] - TypeError: sort_natural() takes 1 positional argument but 2 were given
FAILED [liquid.golden.sort_natural_filter > array of objects with a key] - TypeError: sort_natural() takes 1 positional argument but 2 were given
FAILED [liquid.golden.sort_natural_filter > array of objects with a missing key] - TypeError: sort_natural() takes 1 positional argument but 2 were given
FAILED [liquid.golden.sort_natural_filter > array of strings with a nul] - TypeError: descriptor 'casefold' for 'str' objects doesn't apply to a 'NoneType' object
FAILED [liquid.golden.sort_natural_filter > empty array] - TypeError: 'EmptyDrop' object is not iterable
FAILED [liquid.golden.sort_natural_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED [liquid.golden.split_filter > argument not a string] - TypeError: must be str or None, not int
FAILED [liquid.golden.split_filter > not a string] - AttributeError: 'int' object has no attribute 'split'
FAILED [liquid.golden.split_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.strip_filter > not a string] - TypeError: descriptor 'strip' for 'str' objects doesn't apply to a 'int' object
FAILED [liquid.golden.strip_filter > undefined left value] - TypeError: descriptor 'strip' for 'str' objects doesn't apply to a 'Undefined' object
FAILED [liquid.golden.strip_html_filter > not a string] - TypeError: expected string or bytes-like object
FAILED [liquid.golden.strip_html_filter > undefined left value] - TypeError: expected string or bytes-like object
FAILED [liquid.golden.strip_newlines_filter > not a string] - AttributeError: 'int' object has no attribute 'replace'
FAILED [liquid.golden.strip_newlines_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.tablerow_tag > one row] - assert '<tr class="r...ag4</td></tr>' == '<tr class="r...4</td></tr>\n'
FAILED [liquid.golden.tablerow_tag > one row with limit] - assert '<tr class="r...ag2</td></tr>' == '<tr class="r...2</td></tr>\n'
FAILED [liquid.golden.tablerow_tag > one row with offset] - assert '<tr class="r...ag4</td></tr>' == '<tr class="r...4</td></tr>\n'
FAILED [liquid.golden.tablerow_tag > two column odd range] - jinja2.exceptions.UndefinedError: 'tablerowloop' is undefined
FAILED [liquid.golden.tablerow_tag > two column range] - jinja2.exceptions.UndefinedError: 'tablerowloop' is undefined
FAILED [liquid.golden.tablerow_tag > two columns] - assert '<tr class="r...ag4</td></tr>' == '<tr class="r...4</td></tr>\n'
FAILED [liquid.golden.times_filter > string times string] - TypeError: can't multiply sequence by non-int of type 'str'
FAILED [liquid.golden.times_filter > undefined argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.times_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.truncate_filter > not a string] - TypeError: object of type 'int' has no len()
FAILED [liquid.golden.truncate_filter > undefined second argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.truncatewords_filter > not a string] - AttributeError: 'int' object has no attribute 'split'
FAILED [liquid.golden.truncatewords_filter > reference implementation test 2] - TypeError: can only concatenate str (not "int") to str
FAILED [liquid.golden.truncatewords_filter > reference implementation test 5] - AssertionError: assert '...' == 'one...'
FAILED [liquid.golden.truncatewords_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.truncatewords_filter > undefined second argument] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.truncatewords_filter > very big argument] - Failed: DID NOT RAISE <class 'Exception'>
FAILED [liquid.golden.uniq_filter > array of objects with key property] - TypeError: uniq() takes 1 positional argument but 2 were given
FAILED [liquid.golden.uniq_filter > empty array] - TypeError: 'EmptyDrop' object is not iterable
FAILED [liquid.golden.uniq_filter > left value is not an array] - TypeError: 'int' object is not iterable
FAILED [liquid.golden.uniq_filter > left value is undefined] - TypeError: 'EmptyDrop' object is not iterable
FAILED [liquid.golden.uniq_filter > unhashable items] - AssertionError: assert 'a#b#[]#{}' == 'a#b#{}'
FAILED [liquid.golden.unless_tag > blocks that contain only whitespace are not rendered] - AssertionError: assert '  ' == ''
FAILED [liquid.golden.unless_tag > conditional alternative block] - AssertionError: assert '' == 'bar'
FAILED [liquid.golden.unless_tag > conditional alternative block with default] - AssertionError: assert 'bar' == 'hello'
FAILED [liquid.golden.upcase_filter > not a string] - TypeError: descriptor 'upper' for 'str' objects doesn't apply to a 'int' object
FAILED [liquid.golden.upcase_filter > undefined left value] - TypeError: descriptor 'upper' for 'str' objects doesn't apply to a 'Undefined' object
FAILED [liquid.golden.url_decode_filter > not a string] - TypeError: argument of type 'int' is not iterable
FAILED [liquid.golden.url_decode_filter > some special URL characters] - AssertionError: assert 'email+addres...@example.com!' == 'email addres...@example.com!'
FAILED [liquid.golden.url_decode_filter > undefined left value] - jinja2.exceptions.UndefinedError: 'nosuchthing' is undefined
FAILED [liquid.golden.where_filter > array of hashes] - TypeError: where() missing 1 required positional argument: 'value'
FAILED [liquid.golden.where_filter > array of hashes with a missing key] - AttributeError: 'dict' object has no attribute 'title'
FAILED [liquid.golden.where_filter > array of hashes with equality test] - AssertionError: assert '(t,i)' == '(title,bar)'
FAILED [liquid.golden.where_filter > both arguments are undefined] - TypeError: getattr(): attribute name must be string
FAILED [liquid.golden.where_filter > first argument is undefined] - TypeError: where() missing 1 required positional argument: 'value'
FAILED [liquid.golden.where_filter > left value is undefined] - TypeError: where() missing 1 required positional argument: 'value'
FAILED [liquid.golden.whitespace_control > white space control with  carriage return, newline and spaces] - AssertionError: assert '\nWelcome back,  Holly!' == '\r\nWelcome back,  Holly!'
FAILED [liquid.golden.whitespace_control > white space control with carriage return and spaces] - AssertionError: assert '\nWelcome back,  Holly!' == '\rWelcome back,  Holly!'

299 failed, 298 passed in 1.20s
```
