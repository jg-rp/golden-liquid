# LiquidScript Version 1.7.0

```
npm install
npx jest --noStackTrace
```

```
  ● liquid.golden.case_tag › switch on array

    expect(received).toBe(expected) // Object.is equality

    Expected: "foo"
    Received: ""

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

  ● liquid.golden.if_tag › array is equal to array

    expect(received).toBe(expected) // Object.is equality

    Expected: "true"
    Received: "false"

  ● liquid.golden.if_tag › array is equal to array from context

    expect(received).toBe(expected) // Object.is equality

    Expected: "true"
    Received: "false"

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

  ● liquid.golden.unless_tag › array is equal to array

    expect(received).toBe(expected) // Object.is equality

    Expected: "false"
    Received: "true"

  ● liquid.golden.unless_tag › array is equal to array from context

    expect(received).toBe(expected) // Object.is equality

    Expected: "false"
    Received: "true"

Test Suites: 1 failed, 1 total
Tests:       9 failed, 808 passed, 817 total
Snapshots:   0 total
Time:        2.178 s
Ran all test suites.
```
