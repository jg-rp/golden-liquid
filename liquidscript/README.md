# LiquidScript Version 1.8.0

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

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

  ● liquid.golden.split_filter › empty string and single char argument

    expect(received).toBe(expected) // Object.is equality

    Expected: ""
    Received: "0"

  ● liquid.golden.split_filter › left matches argument

    expect(received).toBe(expected) // Object.is equality

    Expected: ""
    Received: "01"

  ● liquid.golden.split_filter › left matches string repr of argument

    expect(received).toBe(expected) // Object.is equality

    Expected: ""
    Received: "01"

Test Suites: 1 failed, 1 total
Tests:       8 failed, 848 passed, 856 total
Snapshots:   0 total
Time:        2.151 s
Ran all test suites.
```
