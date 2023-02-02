# LiquidScript Version 1.6.0

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

  ● liquid.golden.output_statement › bracketed variable resolves to a string without leading identifier

    LiquidSyntaxError: unexpected '[' (<string>:1)

  ● liquid.golden.output_statement › nested bracketed variable resolving to a string

    LiquidSyntaxError: unexpected '[' (<string>:1)

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

  ● liquid.golden.whitespace_control › white space control with raw tags

    LiquidSyntaxError: unexpected tag 'raw' (<string>:2)

Test Suites: 1 failed, 1 total
Tests:       7 failed, 805 passed, 812 total
Snapshots:   0 total
Time:        2.504 s
Ran all test suites.

Test Suites: 1 failed, 1 total
Tests:       4 failed, 800 passed, 804 total
Snapshots:   0 total
Time:        2.409 s
Ran all test suites.
```
