# LiquidScript Version 1.4.1

```
npm install
npx jest --noStackTrace
```

```
  ● liquid.golden.date_filter › literal percent

    expect(received).toBe(expected) // Object.is equality

    Expected: "%Mar 14, 16"
    Received: "Invalid DateTime"

  ● liquid.golden.date_filter › negative timestamp string

    expect(received).toBe(expected) // Object.is equality

    Expected: "-1152098955"
    Received: "06/29/1933"

  ● liquid.golden.date_filter › well formed string

    expect(received).toBe(expected) // Object.is equality

    Expected: "Mar 14, 16"
    Received: "Invalid DateTime"

  ● liquid.golden.for_tag › limit is a string

    LiquidSyntaxError: unexpected token ''' (<string>:1)

  ● liquid.golden.for_tag › offset is a string

    LiquidSyntaxError: unexpected token ''' (<string>:1)

  ● liquid.golden.identifiers › only digits

    LiquidSyntaxError: invalid assignment expression '123 = 'hello'' (<string>:1)

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

  ● liquid.golden.tablerow_tag › cols is a float

    LiquidTypeError: tablerow cols must be an integer, found '2.6' (<string>:1)

  ● liquid.golden.tablerow_tag › cols is a string

    LiquidSyntaxError: unexpected token ''' (<string>:1)

  ● liquid.golden.tablerow_tag › limit is a string

    LiquidSyntaxError: unexpected token ''' (<string>:1)

  ● liquid.golden.tablerow_tag › offset is a string

    LiquidSyntaxError: unexpected token ''' (<string>:1)

  ● liquid.golden.truncatewords_filter › all whitespace is clobbered

    expect(received).toBe(expected) // Object.is equality

    Expected: "one two..."
    Received: " one..."

Test Suites: 1 failed, 1 total
Tests:       12 failed, 769 passed, 781 total
Snapshots:   0 total
Time:        2.256 s
Ran all test suites.
```
