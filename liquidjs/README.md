# LiquidJS Version 9.29.0

```
npm install
npx jest --noStackTrace
```

```
  ● liquid.golden.abs_filter › not a string, int or float

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.abs_filter › string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.abs_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.abs_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.assign_tag › assign a range literal

    expect(received).toBe(expected) // Object.is equality

    Expected: "1..3"
    Received: "1,2,3"

  ● liquid.golden.at_least_filter › argument string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.at_least_filter › left value not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "2"
    Received: "NaN"

  ● liquid.golden.at_least_filter › left value not a number negative argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.at_least_filter › missing arg

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.at_least_filter › too many args

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.at_least_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "5"
    Received: "NaN"

  ● liquid.golden.at_least_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "5"
    Received: "NaN"

  ● liquid.golden.at_most_filter › left value not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "-2"
    Received: "NaN"

  ● liquid.golden.at_most_filter › missing arg

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.at_most_filter › too many args

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.at_most_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.at_most_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.base64_decode_filter › from string

    undefined filter: base64_decode, line:1, col:1
    >> 1| {{ "XyMvLg==" | base64_decode }}
    ParseError: undefined filter: base64_decode, line:1, col:1

  ● liquid.golden.base64_decode_filter › from string with URL unsafe

    undefined filter: base64_decode, line:1, col:1
    >> 1| {{ a | base64_decode }}
    ParseError: undefined filter: base64_decode, line:1, col:1

  ● liquid.golden.base64_decode_filter › undefined left value

    undefined filter: base64_decode, line:1, col:1
    >> 1| {{ nosuchthing | base64_decode }}
    ParseError: undefined filter: base64_decode, line:1, col:1

  ● liquid.golden.base64_encode_filter › from string

    undefined filter: base64_encode, line:1, col:1
    >> 1| {{ "_#/." | base64_encode }}
    ParseError: undefined filter: base64_encode, line:1, col:1

  ● liquid.golden.base64_encode_filter › from string with URL unsafe

    undefined filter: base64_encode, line:1, col:1
    >> 1| {{ a | base64_encode }}
    ParseError: undefined filter: base64_encode, line:1, col:1

  ● liquid.golden.base64_encode_filter › not a string

    undefined filter: base64_encode, line:1, col:1
    >> 1| {{ 5 | base64_encode }}
    ParseError: undefined filter: base64_encode, line:1, col:1

  ● liquid.golden.base64_encode_filter › undefined left value

    undefined filter: base64_encode, line:1, col:1
    >> 1| {{ nosuchthing | base64_encode }}
    ParseError: undefined filter: base64_encode, line:1, col:1

  ● liquid.golden.base64_url_safe_decode_filter › from string

    undefined filter: base64_url_safe_decode, line:1, col:1
    >> 1| {{ "XyMvLg==" | base64_url_safe_decode }}
    ParseError: undefined filter: base64_url_safe_decode, line:1, col:1

  ● liquid.golden.base64_url_safe_decode_filter › from string with URL unsafe

    undefined filter: base64_url_safe_decode, line:1, col:1
    >> 1| {{ a | base64_url_safe_decode }}
    ParseError: undefined filter: base64_url_safe_decode, line:1, col:1

  ● liquid.golden.base64_url_safe_decode_filter › undefined left value

    undefined filter: base64_url_safe_decode, line:1, col:1
    >> 1| {{ nosuchthing | base64_url_safe_decode }}
    ParseError: undefined filter: base64_url_safe_decode, line:1, col:1

  ● liquid.golden.base64_url_safe_encode_filter › from string

    undefined filter: base64_url_safe_encode, line:1, col:1
    >> 1| {{ "_#/." | base64_url_safe_encode }}
    ParseError: undefined filter: base64_url_safe_encode, line:1, col:1

  ● liquid.golden.base64_url_safe_encode_filter › from string with URL unsafe

    undefined filter: base64_url_safe_encode, line:1, col:1
    >> 1| {{ a | base64_url_safe_encode }}
    ParseError: undefined filter: base64_url_safe_encode, line:1, col:1

  ● liquid.golden.base64_url_safe_encode_filter › not a string

    undefined filter: base64_url_safe_encode, line:1, col:1
    >> 1| {{ 5 | base64_url_safe_encode }}
    ParseError: undefined filter: base64_url_safe_encode, line:1, col:1

  ● liquid.golden.base64_url_safe_encode_filter › undefined left value

    undefined filter: base64_url_safe_encode, line:1, col:1
    >> 1| {{ nosuchthing | base64_url_safe_encode }}
    ParseError: undefined filter: base64_url_safe_encode, line:1, col:1

  ● liquid.golden.capitalize_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.case_tag › evaluate multiple matching blocks

    expect(received).toBe(expected) // Object.is equality

    Expected: "foobarbar"
    Received: "foo"

  ● liquid.golden.ceil_filter › not a string, int or float

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.ceil_filter › string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.ceil_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.ceil_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.compact_filter › array of objects with key property

    expect(received).toBe(expected) // Object.is equality

    Expected: "(title,foo)(name,a)(title,bar)(name,c)"
    Received: "(title,foo)(name,a)(title,)(name,b)(title,bar)(name,c)"

  ● liquid.golden.compact_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.concat_filter › missing argument is an error

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.concat_filter › nested left value gets flattened

    expect(received).toBe(expected) // Object.is equality

    Expected: "a#x#b#y#z#c#d"
    Received: "a,x#b,y,z#c#d"

  ● liquid.golden.concat_filter › non array-like argument is an error

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.concat_filter › range literal concat filter left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "123567"
    Received: "1,2,3,5,6,7"

  ● liquid.golden.concat_filter › undefined argument is an error

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.concat_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "c#d"
    Received: "#c#d"

  ● liquid.golden.date_filter › missing argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.date_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.date_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "March 14, 2016"
    Received: "undefined"

  ● liquid.golden.default_filter › allow false

    expect(received).toBe(expected) // Object.is equality

    Expected: "false"
    Received: "bar"

  ● liquid.golden.default_filter › empty object

    expect(received).toBe(expected) // Object.is equality

    Expected: "foo"
    Received: "[object Object]"

  ● liquid.golden.default_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.divided_by_filter › arg string not a number

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.divided_by_filter › divied by zero

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.divided_by_filter › integer division

    expect(received).toBe(expected) // Object.is equality

    Expected: "4"
    Received: "4.5"

  ● liquid.golden.divided_by_filter › integer value and float arg

    expect(received).toBe(expected) // Object.is equality

    Expected: "5.0"
    Received: "5"

  ● liquid.golden.divided_by_filter › not a string, int or float

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.divided_by_filter › string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "0.0"
    Received: "NaN"

  ● liquid.golden.divided_by_filter › string value and argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "5.0"
    Received: "5"

  ● liquid.golden.divided_by_filter › too many args

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.divided_by_filter › undefined argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.divided_by_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.downcase_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.echo_tag › access an array item by index

    tag "echo" not found, line:1, col:1
    >> 1| {% echo product.tags[1] %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › access an array item by negative index

    tag "echo" not found, line:1, col:1
    >> 1| {% echo product.tags[-2] %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › access an undefined variable by index

    tag "echo" not found, line:1, col:1
    >> 1| {% echo nosuchthing[0] %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › access array item by index stored in a local variable

    tag "echo" not found, line:1, col:19
    >> 1| {% assign i = 1 %}{% echo product.tags[i] %}
    ParseError: tag "echo" not found, line:1, col:19

  ● liquid.golden.echo_tag › assign a variable the value of an existing variable

    tag "echo" not found, line:1, col:90
    >> 1| {% capture some %}hello{% endcapture %}{% assign other = some %}{% assign some = 'foo' %}{% echo some %}-{% echo other %}
    ParseError: tag "echo" not found, line:1, col:90

  ● liquid.golden.echo_tag › dump an array from the global context

    tag "echo" not found, line:1, col:1
    >> 1| {% echo product.tags %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › render a float literal

    tag "echo" not found, line:1, col:1
    >> 1| {% echo 1.23 %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › render a global identifier with a filter

    tag "echo" not found, line:1, col:1
    >> 1| {% echo product.title | upcase %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › render a string literal

    tag "echo" not found, line:1, col:1
    >> 1| {% echo 'hello' %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › render a variable from the global namespace

    tag "echo" not found, line:1, col:1
    >> 1| {% echo product.title %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › render a variable from the local namespace

    tag "echo" not found, line:1, col:28
    >> 1| {% assign name = 'Brian' %}{% echo name %}
    ParseError: tag "echo" not found, line:1, col:28

  ● liquid.golden.echo_tag › render an integer literal

    tag "echo" not found, line:1, col:1
    >> 1| {% echo 123 %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › render an undefined property

    tag "echo" not found, line:1, col:1
    >> 1| {% echo product.age %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › render an undefined variable

    tag "echo" not found, line:1, col:1
    >> 1| {% echo age %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.echo_tag › traverse variables with bracketed identifiers

    tag "echo" not found, line:1, col:1
    >> 1| {% echo site.data.menu[include.menu][include.locale] %}
    ParseError: tag "echo" not found, line:1, col:1

  ● liquid.golden.escape_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.escape_once_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: ""
    Received: "undefined"

  ● liquid.golden.escape_once_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.first_filter › first of a hash

    expect(received).toBe(expected) // Object.is equality

    Expected: "(b,1)"
    Received: "(,)"

  ● liquid.golden.floor_filter › not a string, int or float

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.floor_filter › string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.floor_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.floor_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.for_tag › access parentloop

    expect(received).toBe(expected) // Object.is equality

    Expected: "1 1 1 1 1 2 1 2 2 1 2 1 2 2 2 2 "
    Received: "1 1  1 1 2  2 2 1  1 2 2  2 "

  ● liquid.golden.for_tag › blank empty loops

    expect(received).toBe(expected) // Object.is equality

    Expected: ""
    Received: "                      "

  ● liquid.golden.for_tag › continue a loop

    expect(received).toBe(expected) // Object.is equality

    Expected: "1 2 3 4 5 6 "
    Received: "1 2 3 1 2 3 4 5 6 "

  ● liquid.golden.for_tag › continue a loop over a changing array

    expect(received).toBe(expected) // Object.is equality

    Expected: "1 2 3 x y z "
    Received: "1 2 3 u v w x y z "

  ● liquid.golden.for_tag › continue a loop over an assigned range

    expect(received).toBe(expected) // Object.is equality

    Expected: "1 2 3 4 5 "
    Received: "1 2 3 1 2 3 4 5 "

  ● liquid.golden.for_tag › continue from a limit that is greater than length

    expect(received).toBe(expected) // Object.is equality

    Expected: "1 2 3 4 5 6 "
    Received: "1 2 3 4 5 6 1 2 3 4 5 6 "

  ● liquid.golden.for_tag › continue from a range expression

    expect(received).toBe(expected) // Object.is equality

    Expected: "1 2 3 4 5 6 "
    Received: "1 2 3 1 2 3 4 5 6 "

  ● liquid.golden.for_tag › loop over an existing range object

    expect(received).toBe(expected) // Object.is equality

    Expected: "1..3123123"
    Received: "1,2,3123123"

  ● liquid.golden.for_tag › loop over range with float start

    expect(received).toBe(expected) // Object.is equality

    Expected: "2345"
    Received: "2.43.44.45.4"

  ● liquid.golden.for_tag › nothing to continue from

    expect(received).toBe(expected) // Object.is equality

    Expected: "1 2 3 4 5 6 "
    Received: "1 2 3 4 5 6 1 2 3 4 5 6 "

  ● liquid.golden.for_tag › parent's parentloop

    expect(received).toBe(expected) // Object.is equality

    Expected: "i=1 j=1 k=1 i=1 j=1 k=2 i=1 j=2 k=1 i=1 j=2 k=2 i=2 j=1 k=1 i=2 j=1 k=2 i=2 j=2 k=1 i=2 j=2 k=2 "
    Received: "i= j= k=1 i= j= k=2 i= j= k=1 i= j= k=2 i= j= k=1 i= j= k=2 i= j= k=1 i= j= k=2 "

  ● liquid.golden.if_tag › alternate not equal condition

    unexpected token at "> 'foo'", line:1, col:1
    >> 1| {% if product.title <> 'foo' %}baz{% endif %}
    ParseError: unexpected token at "> 'foo'", line:1, col:1

  ● liquid.golden.if_tag › blocks that contain only whitespace and comments are not rendered

    expect(received).toBe(expected) // Object.is equality

    Expected: ""
    Received: "  "

  ● liquid.golden.if_tag › blocks that contain only whitespace are not rendered

    expect(received).toBe(expected) // Object.is equality

    Expected: ""
    Received: "  "

  ● liquid.golden.if_tag › literal nil is falsy

    expect(received).toBe(expected) // Object.is equality

    Expected: "foo"
    Received: "bar"

  ● liquid.golden.if_tag › range equals range

    expect(received).toBe(expected) // Object.is equality

    Expected: "true"
    Received: "false"

  ● liquid.golden.ifchanged_tag › change from assign

    tag "ifchanged" not found, line:1, col:27
    >> 1| {% assign foo = 'hello' %}{% ifchanged %}{{ foo }}{% endifchanged %}{% ifchanged %}{{ foo }}{% endifchanged %}{% assign foo = 'goodbye' %}{% ifchanged %}{{ foo }}{% endifchanged %}
    ParseError: tag "ifchanged" not found, line:1, col:27

  ● liquid.golden.ifchanged_tag › changed from initial state

    tag "ifchanged" not found, line:1, col:1
    >> 1| {% ifchanged %}hello{% endifchanged %}
    ParseError: tag "ifchanged" not found, line:1, col:1

  ● liquid.golden.ifchanged_tag › no change from assign

    tag "ifchanged" not found, line:1, col:27
    >> 1| {% assign foo = 'hello' %}{% ifchanged %}{{ foo }}{% endifchanged %}{% ifchanged %}{{ foo }}{% endifchanged %}
    ParseError: tag "ifchanged" not found, line:1, col:27

  ● liquid.golden.ifchanged_tag › not changed from initial state

    tag "ifchanged" not found, line:1, col:1
    >> 1| {% ifchanged %}{% endifchanged %}
    ParseError: tag "ifchanged" not found, line:1, col:1

  ● liquid.golden.ifchanged_tag › within for loop

    tag "ifchanged" not found, line:1, col:79, line:1, col:56
    >> 1| {% assign list = "1,3,2,1,3,1,2" | split: "," | sort %}{% for item in list -%}{%- ifchanged %} {{ item }}{% endifchanged -%}{%- endfor %}
    ParseError: tag "ifchanged" not found, line:1, col:79, line:1, col:56

  ● liquid.golden.include_tag › bound array variable

    expect(received).toBe(expected) // Object.is equality

    Expected: "bikecar"
    Received: ""

  ● liquid.golden.include_tag › bound variable with alias

    expect(received).toBe(expected) // Object.is equality

    Expected: "car"
    Received: ""

  ● liquid.golden.include_tag › some keyword arguments with range literal

    expect(received).toBe(expected) // Object.is equality

    Expected: "1..3 there"
    Received: "1,2,3 there"

  ● liquid.golden.join_filter › joining a string is a noop

    v.join is not a function, line:1, col:1
    >> 1| {{ 'a,b' | join: '#' }}
    RenderError: v.join is not a function, line:1, col:1

  ● liquid.golden.join_filter › joining an int is a noop

    v.join is not a function, line:1, col:1
    >> 1| {{ 123 | join: '#' }}
    RenderError: v.join is not a function, line:1, col:1

  ● liquid.golden.join_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.join_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "ab"
    Received: "a b"

  ● liquid.golden.join_filter › undefined left value

    Cannot read properties of undefined (reading 'join'), line:1, col:1
    >> 1| {{ nosuchthing | join: '#' }}
    RenderError: Cannot read properties of undefined (reading 'join'), line:1, col:1

  ● liquid.golden.last_filter › array of things

    expect(received).toBe(expected) // Object.is equality

    Expected: "{}"
    Received: "[object Object]"

  ● liquid.golden.liquid_tag › multiple tags

    tag "liquid" not found, line:1, col:1
    >> 1| {% liquid
       2| if product.title
       3|    echo product.title | upcase
       4| else
    ParseError: tag "liquid" not found, line:1, col:1

  ● liquid.golden.lstrip_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.map_filter › array containing a non object

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.map_filter › left value not an array

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.map_filter › undefined argument

    Cannot read properties of undefined (reading 'split'), line:1, col:1
    >> 1| {{ a | map: nosuchthing | join: '#' }}
    RenderError: Cannot read properties of undefined (reading 'split'), line:1, col:1

  ● liquid.golden.minus_filter › arg string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "10"
    Received: "NaN"

  ● liquid.golden.minus_filter › float value and float arg

    expect(received).toBe(expected) // Object.is equality

    Expected: "7.9"
    Received: "7.8999999999999995"

  ● liquid.golden.minus_filter › integer value and float arg

    expect(received).toBe(expected) // Object.is equality

    Expected: "8.0"
    Received: "8"

  ● liquid.golden.minus_filter › not a string, int or float

    expect(received).toBe(expected) // Object.is equality

    Expected: "-1"
    Received: "NaN"

  ● liquid.golden.minus_filter › string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "-2.0"
    Received: "NaN"

  ● liquid.golden.minus_filter › string value and string arg

    expect(received).toBe(expected) // Object.is equality

    Expected: "7.9"
    Received: "7.8999999999999995"

  ● liquid.golden.minus_filter › too many args

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.minus_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "10"
    Received: "NaN"

  ● liquid.golden.minus_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "-2"
    Received: "NaN"

  ● liquid.golden.modulo_filter › arg string not a number

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.modulo_filter › float value and float arg

    expect(received).toBe(expected) // Object.is equality

    Expected: "3.1"
    Received: "3.0999999999999996"

  ● liquid.golden.modulo_filter › integer value and float arg

    expect(received).toBe(expected) // Object.is equality

    Expected: "0.0"
    Received: "0"

  ● liquid.golden.modulo_filter › not a string, int or float

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.modulo_filter › string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "0.0"
    Received: "NaN"

  ● liquid.golden.modulo_filter › string value and argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "0.0"
    Received: "0"

  ● liquid.golden.modulo_filter › too many args

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.modulo_filter › undefined argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.modulo_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.newline_to_br_filter › not a string

    v.replace is not a function, line:1, col:1
    >> 1| {{ 5 | newline_to_br }}
    RenderError: v.replace is not a function, line:1, col:1

  ● liquid.golden.newline_to_br_filter › reference implementation test 2

    expect(received).toBe(expected) // Object.is equality

    - Expected  - 1
    + Received  + 1

    - a<br />
    + a
    <br />
      b<br />
      c

  ● liquid.golden.newline_to_br_filter › undefined left value

    Cannot read properties of undefined (reading 'replace'), line:1, col:1
    >> 1| {{ nosuchthing | newline_to_br }}
    RenderError: Cannot read properties of undefined (reading 'replace'), line:1, col:1

  ● liquid.golden.newline_to_br_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.output_statement › access an array item by negative index

    expect(received).toBe(expected) // Object.is equality

    Expected: "sports"
    Received: ""

  ● liquid.golden.output_statement › dump an array from the global context

    expect(received).toBe(expected) // Object.is equality

    Expected: "sportsgarden"
    Received: "sports,garden"

  ● liquid.golden.output_statement › render a default given a literal false with 'allow false' equal to true

    expect(received).toBe(expected) // Object.is equality

    Expected: "false"
    Received: "bar"

  ● liquid.golden.output_statement › render a range object

    expect(received).toBe(expected) // Object.is equality

    Expected: "1..5"
    Received: "1,2,3,4,5"

  ● liquid.golden.output_statement › render a range object that uses a float

    expect(received).toBe(expected) // Object.is equality

    Expected: "1..5"
    Received: "1.4,2.4,3.4,4.4,5.4"

  ● liquid.golden.output_statement › render a range object that uses an identifier

    expect(received).toBe(expected) // Object.is equality

    Expected: "2..5"
    Received: "2,3,4,5"

  ● liquid.golden.output_statement › reverse a range

    expect(received).toBe(expected) // Object.is equality

    Expected: "5432"
    Received: "5,4,3,2"

  ● liquid.golden.output_statement › unexpected left value for the `join` filter passes through

    v.join is not a function, line:1, col:1
    >> 1| {{ 12 | join: '#' }}
    RenderError: v.join is not a function, line:1, col:1

  ● liquid.golden.plus_filter › arg string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "10"
    Received: "NaN"

  ● liquid.golden.plus_filter › integer value and float arg

    expect(received).toBe(expected) // Object.is equality

    Expected: "12.0"
    Received: "12"

  ● liquid.golden.plus_filter › not a string, int or float

    expect(received).toBe(expected) // Object.is equality

    Expected: "1"
    Received: "NaN"

  ● liquid.golden.plus_filter › string not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "2.0"
    Received: "NaN"

  ● liquid.golden.plus_filter › too many args

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.plus_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "10"
    Received: "NaN"

  ● liquid.golden.plus_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "2"
    Received: "NaN"

  ● liquid.golden.range_objects › start is not a number

    expect(received).toBe(expected) // Object.is equality

    Expected: "0#1#2#3#4#5"
    Received: ""

  ● liquid.golden.remove_filter › missing argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.remove_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.remove_first_filter › missing argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.remove_first_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.render_tag › bound array variable

    expect(received).toBe(expected) // Object.is equality

    Expected: "bikecar"
    Received: ""

  ● liquid.golden.render_tag › forloop helper

    expect(received).toBe(expected) // Object.is equality

    Expected: "Product: bike first index:1 Product: car last index:2 "
    Received: "Product:  first index:1 Product:  last index:2 "

  ● liquid.golden.render_tag › render loops can't access parentloop

    expect(received).toBe(expected) // Object.is equality

    Expected: "bike-0 car-1 bike-0 car-1 bike-0 car-1 "
    Received: "-0 -1 -0 -1 -0 -1 "

  ● liquid.golden.render_tag › render loops don't add parentloop

    expect(received).toBe(expected) // Object.is equality

    Expected: "bike-0 0 1 2 car-1 0 1 2 "
    Received: "-0 0 1 2 -1 0 1 2 "

  ● liquid.golden.render_tag › some keyword arguments including a range literal

    expect(received).toBe(expected) // Object.is equality

    Expected: "1..3 there"
    Received: "1,2,3 there"

  ● liquid.golden.replace_filter › missing argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "heo"
    Received: "he,o"

  ● liquid.golden.replace_filter › missing arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.replace_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.replace_filter › undefined first argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "#T#a#k#e# #m#y# #p#r#o#t#e#i#n#"
    Received: "Take my protein"

  ● liquid.golden.replace_filter › undefined second argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "Take  protein pills and put  helmet on"
    Received: "Take , protein pills and put , helmet on"

  ● liquid.golden.replace_first_filter › missing argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "heo"
    Received: "heundefinedo"

  ● liquid.golden.replace_first_filter › missing arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.replace_first_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.replace_first_filter › undefined first argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "#Take my protein"
    Received: "Take my protein"

  ● liquid.golden.replace_first_filter › undefined second argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "Take  protein pills and put my helmet on"
    Received: "Take undefined protein pills and put my helmet on"

  ● liquid.golden.reverse_filter › array of things

    expect(received).toBe(expected) // Object.is equality

    Expected: "{}#1#b#a"
    Received: "[object Object]##1#b#a"

  ● liquid.golden.reverse_filter › left value is undefined

    undefined is not iterable (cannot read property Symbol(Symbol.iterator)), line:1, col:1
    >> 1| {{ nosuchthing | reverse | join: '#' }}
    RenderError: undefined is not iterable (cannot read property Symbol(Symbol.iterator)), line:1, col:1

  ● liquid.golden.reverse_filter › left value not an array

    expect(received).toBe(expected) // Object.is equality

    Expected: "123"
    Received: ""

  ● liquid.golden.reverse_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.round_filter › too many args

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.round_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "6.0"
    Received: "6"

  ● liquid.golden.round_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.rstrip_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.size_filter › size of a hash

    expect(received).toBe(expected) // Object.is equality

    Expected: "2"
    Received: "0"

  ● liquid.golden.size_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.slice_filter › first argument is a float

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.slice_filter › first argument is a sstring

    expect(received).toBe(expected) // Object.is equality

    Expected: "l"
    Received: "llo"

  ● liquid.golden.slice_filter › first argument not an integer

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.slice_filter › missing arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.slice_filter › not a string

    v.slice is not a function, line:1, col:1
    >> 1| {{ 5 | slice: 1 }}
    RenderError: v.slice is not a function, line:1, col:1

  ● liquid.golden.slice_filter › second argument is a float

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.slice_filter › second argument not an integer

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.slice_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.slice_filter › undefined first argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.slice_filter › undefined left value

    Cannot read properties of undefined (reading 'slice'), line:1, col:1
    >> 1| {{ nosuchthing | slice: 1, 3 }}
    RenderError: Cannot read properties of undefined (reading 'slice'), line:1, col:1

  ● liquid.golden.sort_filter › array of objects with missing key

    expect(received).toBe(expected) // Object.is equality

    Expected: "(title,bar)(title,foo)(heading,Baz)"
    Received: "(title,foo)(heading,Baz)(title,bar)"

  ● liquid.golden.sort_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.sort_natural_filter › argument is undefined

    expect(received).toBe(expected) // Object.is equality

    Expected: "(title,bar)(title,Baz)(title,foo)"
    Received: "(title,foo)(title,bar)(title,Baz)"

  ● liquid.golden.sort_natural_filter › left value is not an array

    expect(received).toBe(expected) // Object.is equality

    Expected: "123"
    Received: ""

  ● liquid.golden.split_filter › missing argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.split_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.split_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "H#e#l#l#o# #t#h#e#r#e"
    Received: "Hello there"

  ● liquid.golden.strip_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.strip_html_filter › not a string

    v.replace is not a function, line:1, col:1
    >> 1| {{ 5 | strip_html }}
    RenderError: v.replace is not a function, line:1, col:1

  ● liquid.golden.strip_html_filter › undefined left value

    Cannot read properties of undefined (reading 'replace'), line:1, col:1
    >> 1| {{ nosuchthing | strip_html }}
    RenderError: Cannot read properties of undefined (reading 'replace'), line:1, col:1

  ● liquid.golden.strip_html_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.strip_newlines_filter › reference implementation test 2

    expect(received).toBe(expected) // Object.is equality

    Expected: "abc"
    Received: "a
    bc"

  ● liquid.golden.strip_newlines_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.tablerow_tag › one row

    expect(received).toBe(expected) // Object.is equality

    - Expected  - 3
    + Received  + 1

    - <tr class="row1">
    - <td class="col1">tag1</td><td class="col2">tag2</td><td class="col3">tag3</td><td class="col4">tag4</td></tr>
    + <tr class="row1"><td class="col1">tag1</td><td class="col2">tag2</td><td class="col3">tag3</td><td class="col4">tag4</td></tr>
    -

  ● liquid.golden.tablerow_tag › one row with limit

    expect(received).toBe(expected) // Object.is equality

    - Expected  - 3
    + Received  + 1

    - <tr class="row1">
    - <td class="col1">tag1</td><td class="col2">tag2</td></tr>
    + <tr class="row1"><td class="col1">tag1</td><td class="col2">tag2</td></tr>
    -

  ● liquid.golden.tablerow_tag › one row with offset

    expect(received).toBe(expected) // Object.is equality

    - Expected  - 3
    + Received  + 1

    - <tr class="row1">
    - <td class="col1">tag3</td><td class="col2">tag4</td></tr>
    + <tr class="row1"><td class="col1">tag3</td><td class="col2">tag4</td></tr>
    -

  ● liquid.golden.tablerow_tag › two column odd range

    expect(received).toBe(expected) // Object.is equality

    - Expected  - 5
    + Received  + 1

    - <tr class="row1">
    - <td class="col1">1 true</td><td class="col2">2 false</td></tr>
    - <tr class="row2"><td class="col1">3 true</td><td class="col2">4 false</td></tr>
    - <tr class="row3"><td class="col1">5 true</td></tr>
    + <tr class="row1"><td class="col1">1 true</td><td class="col2">2 false</td></tr><tr class="row2"><td class="col1">3 true</td><td class="col2">4 false</td></tr><tr class="row3"><td class="col1">5 true</td></tr>
    -

  ● liquid.golden.tablerow_tag › two column range

    expect(received).toBe(expected) // Object.is equality

    - Expected  - 4
    + Received  + 1

    - <tr class="row1">
    - <td class="col1">1 true</td><td class="col2">2 false</td></tr>
    - <tr class="row2"><td class="col1">3 true</td><td class="col2">4 false</td></tr>
    + <tr class="row1"><td class="col1">1 true</td><td class="col2">2 false</td></tr><tr class="row2"><td class="col1">3 true</td><td class="col2">4 false</td></tr>
    -

  ● liquid.golden.tablerow_tag › two columns

    expect(received).toBe(expected) // Object.is equality

    - Expected  - 4
    + Received  + 1

    - <tr class="row1">
    - <td class="col1">tag1</td><td class="col2">tag2</td></tr>
    - <tr class="row2"><td class="col1">tag3</td><td class="col2">tag4</td></tr>
    + <tr class="row1"><td class="col1">tag1</td><td class="col2">tag2</td></tr><tr class="row2"><td class="col1">tag3</td><td class="col2">tag4</td></tr>
    -

  ● liquid.golden.times_filter › missing arg

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.times_filter › too many args

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.times_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.times_filter › undefined left value

    expect(received).toBe(expected) // Object.is equality

    Expected: "0"
    Received: "NaN"

  ● liquid.golden.truncate_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.truncate_filter › undefined first argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.truncate_filter › undefined second argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "Ground control to Ma"
    Received: "Ground control to..."

  ● liquid.golden.truncatewords_filter › not a string

    v.split is not a function, line:1, col:1
    >> 1| {{ 5 | truncatewords: 10 }}
    RenderError: v.split is not a function, line:1, col:1

  ● liquid.golden.truncatewords_filter › reference implementation test 5

    expect(received).toBe(expected) // Object.is equality

    Expected: "one..."
    Received: "..."

  ● liquid.golden.truncatewords_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.truncatewords_filter › undefined first argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.truncatewords_filter › undefined left value

    Cannot read properties of undefined (reading 'split'), line:1, col:1
    >> 1| {{ nosuchthing | truncatewords: 5 }}
    RenderError: Cannot read properties of undefined (reading 'split'), line:1, col:1

  ● liquid.golden.truncatewords_filter › undefined second argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "one two"
    Received: "one two..."

  ● liquid.golden.truncatewords_filter › very big argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.uniq_filter › array of objects with key property

    expect(received).toBe(expected) // Object.is equality

    Expected: "(title,foo)(name,a)(title,bar)(name,c)"
    Received: "(title,foo)(name,a)"

  ● liquid.golden.uniq_filter › left value is not an array

    (arr || []).filter is not a function, line:1, col:1
    >> 1| {{ a | uniq | join: '#' }}
    RenderError: (arr || []).filter is not a function, line:1, col:1

  ● liquid.golden.uniq_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.uniq_filter › unhashable items

    expect(received).toBe(expected) // Object.is equality

    Expected: "a#b#{}"
    Received: "a#b##[object Object]"

  ● liquid.golden.unless_tag › blocks that contain only whitespace are not rendered

    expect(received).toBe(expected) // Object.is equality

    Expected: ""
    Received: "  "

  ● liquid.golden.upcase_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.url_decode_filter › not a string

    x.split is not a function, line:1, col:1
    >> 1| {{ 5 | url_decode }}
    RenderError: x.split is not a function, line:1, col:1

  ● liquid.golden.url_decode_filter › undefined left value

    Cannot read properties of undefined (reading 'split'), line:1, col:1
    >> 1| {{ nosuchthing | url_decode }}
    RenderError: Cannot read properties of undefined (reading 'split'), line:1, col:1

  ● liquid.golden.url_decode_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.url_encode_filter › not a string

    x.split is not a function, line:1, col:1
    >> 1| {{ 5 | url_encode }}
    RenderError: x.split is not a function, line:1, col:1

  ● liquid.golden.url_encode_filter › some special URL characters

    expect(received).toBe(expected) // Object.is equality

    Expected: "email+address+is+bob%40example.com%21"
    Received: "email+address+is+bob%40example.com!"

  ● liquid.golden.url_encode_filter › undefined left value

    Cannot read properties of undefined (reading 'split'), line:1, col:1
    >> 1| {{ nosuchthing | url_encode }}
    RenderError: Cannot read properties of undefined (reading 'split'), line:1, col:1

  ● liquid.golden.url_encode_filter › unexpected argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.where_filter › left value is not an array

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.where_filter › missing argument

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.where_filter › too many arguments

    expect(received).toThrow()

    Received function did not throw

Test Suites: 1 failed, 1 total
Tests:       246 failed, 370 passed, 616 total
Snapshots:   0 total
Time:        1.788 s, estimated 3 s
Ran all test suites.
```
