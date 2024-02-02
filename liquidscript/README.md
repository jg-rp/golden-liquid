# LiquidScript Version 1.8.1

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

  ● liquid.golden.date_filter › seconds since epoch format directive

    expect(received).toBe(expected) // Object.is equality

    Expected: "1457913600"
    Received: "Invalid DateTime"

  ● liquid.golden.date_filter › well formed string

    expect(received).toBe(expected) // Object.is equality

    Expected: "Mar 14, 16"
    Received: "Invalid DateTime"

  ● liquid.golden.if_tag › string is greater than or equal to string

    LiquidTypeError: invalid comparison operator 'abc >= acb' (<string>:1)

  ● liquid.golden.if_tag › string is greater than string

    LiquidTypeError: invalid comparison operator 'abc > acb' (<string>:1)

  ● liquid.golden.if_tag › string is less than or equal to string

    LiquidTypeError: invalid comparison operator 'abc <= acb' (<string>:1)

  ● liquid.golden.if_tag › string is less than string

    LiquidTypeError: invalid comparison operator 'abc < acb' (<string>:1)

  ● liquid.golden.if_tag › string is not greater than or equal to string

    LiquidTypeError: invalid comparison operator 'bbb >= aaa' (<string>:1)

  ● liquid.golden.if_tag › string is not greater than string

    LiquidTypeError: invalid comparison operator 'bbb > aaa' (<string>:1)

  ● liquid.golden.if_tag › string is not less than or equal to string

    LiquidTypeError: invalid comparison operator 'bbb <= aaa' (<string>:1)

  ● liquid.golden.if_tag › string is not less than string

    LiquidTypeError: invalid comparison operator 'bbb < aaa' (<string>:1)

  ● liquid.golden.if_tag › undefined is equal to nil

    expect(received).toBe(expected) // Object.is equality

    Expected: "TRUE"
    Received: "FALSE"

  ● liquid.golden.if_tag › undefined is equal to null

    expect(received).toBe(expected) // Object.is equality

    Expected: "TRUE"
    Received: "FALSE"

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

Test Suites: 1 failed, 1 total
Tests:       15 failed, 857 passed, 872 total
Snapshots:   0 total
Time:        1.969 s
Ran all test suites.
```
