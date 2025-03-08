# LiquidScript Version 1.8.2

```
npm install
npx jest --noStackTrace
```

```
  ● liquid.golden.case_tag › falsy when before and truthy when after else

    LiquidSyntaxError: unexpected tag 'when' (<string>:1)

  ● liquid.golden.case_tag › falsy when before and truthy when after multiple else blocks

    LiquidSyntaxError: unexpected tag 'else' (<string>:1)

  ● liquid.golden.case_tag › multiple else blocks

    LiquidSyntaxError: unexpected tag 'else' (<string>:1)

  ● liquid.golden.case_tag › truthy when before and after else

    LiquidSyntaxError: unexpected tag 'when' (<string>:1)

  ● liquid.golden.comment_tag › incomplete tags are not parsed

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.comment_tag › malformed tags are not parsed

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.comment_tag › nested comment blocks

    LiquidSyntaxError: unexpected tag 'endcomment' (<string>:1)

  ● liquid.golden.comment_tag › nested comment blocks, with nested tags

    LiquidSyntaxError: unexpected tag 'endcomment' (<string>:1)

  ● liquid.golden.date_filter › literal percent

    expect(received).toBe(expected) // Object.is equality

    Expected: "%Mar 14, 16"
    Received: "Invalid DateTime"

  ● liquid.golden.date_filter › negative timestamp string

    expect(received).toBe(expected) // Object.is equality

    Expected: "-1152098955"
    Received: "06/29/1933"

  ● liquid.golden.date_filter › seconds since epoch format directive

    expect(received).toBe(expected) // Object.is equality

    Expected: "1457913600"
    Received: "Invalid DateTime"

  ● liquid.golden.date_filter › well formed string

    expect(received).toBe(expected) // Object.is equality

    Expected: "Mar 14, 16"
    Received: "Invalid DateTime"

  ● liquid.golden.doc_tag › doc text is not parsed

    LiquidSyntaxError: unexpected tag 'doc' (<string>:1)

  ● liquid.golden.doc_tag › docs containing unclosed output are ok

    LiquidSyntaxError: expected '}}', found 'eof' (<string>:1)

  ● liquid.golden.doc_tag › docs containing unclosed tags are ok

    LiquidSyntaxError: unexpected tag 'doc' (<string>:1)

  ● liquid.golden.doc_tag › don't render docs

    LiquidSyntaxError: unexpected tag 'doc' (<string>:1)

  ● liquid.golden.doc_tag › whitespace control

    LiquidSyntaxError: unexpected tag 'doc' (<string>:2)

  ● liquid.golden.find_filter › array of hashes, int value, match

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › array of hashes, with a nil

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › array of strings, default value

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › array of strings, default value, no match

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › array of strings, substring match, default value

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › hash input, default value, match

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › hash input, default value, no match

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › hash input, explicit nil, match

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › hash input, int value, match

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › mixed array, default value

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › string input, default value, match

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › string input, string value, match

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_filter › string input, string value, no match

    NoSuchFilterError: unknown filter find (<string>:1)

  ● liquid.golden.find_index_filter › array of hashes, explicit nil, match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › array of hashes, int value, match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › array of hashes, with a nil

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › array of strings, default value

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › array of strings, default value, no match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › array of strings, substring match, default value

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › hash input, default value, match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › hash input, default value, no match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › hash input, explicit nil, match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › hash input, int value, match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › mixed array, default value

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › string input, default value, match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › string input, string value, match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.find_index_filter › string input, string value, no match

    NoSuchFilterError: unknown filter find_index (<string>:1)

  ● liquid.golden.has_filter › array of hashes, false property

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › array of hashes, int property

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › array of hashes, int value, match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › array of hashes, int value, no match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › array of hashes, nil property

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › array of hashes, with a nil

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › array of ints, default value

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › array of strings, default value

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › array of strings, default value, no match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › array of strings, default value, substring match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › hash input, default value, match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › hash input, default value, no match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › hash input, explicit nil, match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › hash input, explicit nil, no match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › hash input, false value, match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › hash input, int value, match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › hash input, int value, no match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › hash input, string value, no type coercion

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › mixed array, default value

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › string input, default value, match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.has_filter › string input, default value, no match

    NoSuchFilterError: unknown filter has (<string>:1)

  ● liquid.golden.if_tag › array contains false

    expect(received).toBe(expected) // Object.is equality

    Expected: "FALSE"
    Received: "TRUE"

  ● liquid.golden.if_tag › array contains nil

    expect(received).toBe(expected) // Object.is equality

    Expected: "FALSE"
    Received: "TRUE"

  ● liquid.golden.if_tag › endswith is not a valid operator

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.if_tag › haskey is not a valid operator

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.if_tag › in is not a valid operator

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.if_tag › object contains nil

    LiquidTypeError: invalid comparison operator '[object Object] contains ' (<string>:1)

  ● liquid.golden.if_tag › object contains undefined

    LiquidTypeError: invalid comparison operator '[object Object] contains ' (<string>:1)

  ● liquid.golden.if_tag › startswith is not a valid operator

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.if_tag › string contains undefined

    expect(received).toBe(expected) // Object.is equality

    Expected: "FALSE"
    Received: "TRUE"

  ● liquid.golden.output_statement › chained bracketed identifier index no dot

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.output_statement › dot followed by bracket

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.output_statement › double dot

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.output_statement › whitespace between words

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.reject_filter › array containing null, default value

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › array of hashes, default value

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › array of hashes, explicit false

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › array of hashes, explicit nil

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › array of hashes, explicit true

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › array of hashes, missing property

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › array of hashes, string value

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › array of strings, default value

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › first argument is undefined

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › input is a hash, default value

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › input is a hash, default value, nil match

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › input is a hash, default value, no match

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › input is a hash, explicit nil match

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › input is a hash, int value, match

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › input is a hash, int value, no match

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › input is undefined

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › nested array of hashes gets flattened

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › second argument is undefined

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › string input becomes a single element array, no match

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.reject_filter › string input becomes a single element array, substring match

    NoSuchFilterError: unknown filter reject (<string>:1)

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

  ● liquid.golden.split_filter › argument is a single space

    expect(received).toBe(expected) // Object.is equality

    - Expected  - 1
    + Received  + 2

    - #0a#1b#2c
    + #0a#1b
    + c

  ● liquid.golden.tablerow_tag › break from a tablerow loop

    LiquidSyntaxError: unexpected 'break' (<string>:1)

  ● liquid.golden.tablerow_tag › break from a tablerow loop inside a for loop

    expect(received).toBe(expected) // Object.is equality

    - Expected  - 8
    + Received  + 2

      \n\n<tr class="row1">
    - <td class="col1"></td></tr>
    - \nloop j=1\n\n<tr class="row1">
    - <td class="col1"></td></tr>
    - \nloop j=2\n\nloop i=1\n\n\n<tr class="row1">
    - <td class="col1"></td></tr>
    - \nloop j=1\n\n<tr class="row1">
    + <td class="col1">\nloop i=1\n\n\n<tr class="row1">
    - <td class="col1"></td></tr>
    - \nloop j=2\n\nloop i=2\n\nafter loop\n
    + <td class="col1">\nloop i=2\n\nafter loop\n

  ● liquid.golden.tablerow_tag › continue from a tablerow loop

    LiquidSyntaxError: unexpected 'continue' (<string>:1)

Test Suites: 1 failed, 1 total
Tests:       103 failed, 907 passed, 1010 total
Snapshots:   0 total
Time:        2.901 s
Ran all test suites.
```
