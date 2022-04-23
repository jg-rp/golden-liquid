# LiquidScript Version 1.1.0-beta.1

```
npm install
npx jest --noStackTrace
```

```
 ● liquid.golden.date_filter › literal percent

    expect(received).toBe(expected) // Object.is equality

    Expected: "%Mar 14, 16"
    Received: "Invalid DateTime"

  ● liquid.golden.date_filter › well formed string

    expect(received).toBe(expected) // Object.is equality

    Expected: "Mar 14, 16"
    Received: "Invalid DateTime"

  ● liquid.golden.sort_filter › incompatible types

    expect(received).toThrow()

    Received function did not throw

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

  ● liquid.golden.where_filter › second argument is undefined

    expect(received).toBe(expected) // Object.is equality

    Expected: "(title,foo)(title,bar)"
    Received: ""

  ● liquid.golden.where_filter › value is explicit nil

    expect(received).toBe(expected) // Object.is equality

    Expected: "(b,bar)"
    Received: "(b,)"

Test Suites: 1 failed, 1 total
Tests:       6 failed, 708 passed, 714 total
Snapshots:   0 total
Time:        1.913 s, estimated 2 s
Ran all test suites.
```
