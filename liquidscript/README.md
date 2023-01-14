# LiquidScript Version 1.5.1

```
npm install
npx jest --noStackTrace
```

```
 ● liquid.golden.cycle_tag › named with different items

    expect(received).toBe(expected) // Object.is equality

    Expected: "183"
    Received: "172"

  ● liquid.golden.cycle_tag › named with different number of arguments

    expect(received).toBe(expected) // Object.is equality

    Expected: "12"
    Received: "111"

  ● liquid.golden.cycle_tag › named with growing number of arguments

    expect(received).toBe(expected) // Object.is equality

    Expected: "112"
    Received: "111"

  ● liquid.golden.cycle_tag › named with shrinking number of arguments

    expect(received).toBe(expected) // Object.is equality

    Expected: "121"
    Received: "111"

  ● liquid.golden.cycle_tag › undefined variable names mixed with no name

    expect(received).toBe(expected) // Object.is equality

    Expected: "121"
    Received: "123"

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

  ● liquid.golden.for_tag › loop over a string literal

    LiquidSyntaxError: invalid loop expression (<string>:1)

  ● liquid.golden.for_tag › loop over a string variable

    LiquidTypeError: expected an iterable object, at foo, found object (<string>:1)

  ● liquid.golden.identifiers › only digits

    LiquidSyntaxError: invalid assignment expression '123 = 'hello'' (<string>:1)

  ● liquid.golden.round_filter › argument is a float

    [DecimalError] Invalid argument: 1.2

  ● liquid.golden.round_filter › argument is a negative

    [DecimalError] Invalid argument: -2

  ● liquid.golden.round_filter › argument is a zero

    expect(received).toBe(expected) // Object.is equality

    Expected: "6"
    Received: "6.0"

  ● liquid.golden.round_filter › undefined argument

    expect(received).toBe(expected) // Object.is equality

    Expected: "6"
    Received: "6.0"

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

Test Suites: 1 failed, 1 total
Tests:       16 failed, 788 passed, 804 total
Snapshots:   0 total
Time:        2.437 s
Ran all test suites.
```
