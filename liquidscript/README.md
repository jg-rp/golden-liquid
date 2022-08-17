# LiquidScript Version 1.3.1

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

  ● liquid.golden.identifiers › only digits

    LiquidSyntaxError: invalid assignment expression '123 = 'hello'' (<string>:1)

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

Test Suites: 1 failed, 1 total
Tests:       4 failed, 759 passed, 763 total
Snapshots:   0 total
Time:        2.248 s
Ran all test suites.
```
