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

  ● liquid.golden.liquid_tag › bare liquid tag in liquid tag

    LiquidSyntaxError: missing tag expression (<string>:3)

  ● liquid.golden.map_filter › input is a hash

    LiquidFilterArgumentError: map: can't map non-iterable (<string>:1)

  ● liquid.golden.map_filter › nested arrays get flattened

    expect(received).toBe(expected) // Object.is equality

    Expected: "foo#bar#baz"
    Received: "foo#"

  ● liquid.golden.sort_natural_filter › incompatible types

    expect(received).toBe(expected) // Object.is equality

    Expected: "14{}"
    Received: "41[object Object]"

  ● liquid.golden.sum_filter › empty sequence

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › hashes with numeric strings and property argument

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › hashes with property argument

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › hashes with some missing properties

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › hashes without property argument

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › ints

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › negative ints

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › negative strings

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › nested ints

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › only zeros

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.sum_filter › positive and negative ints

    NoSuchFilterError: unknown filter sum (<string>:1)

  ● liquid.golden.unless_tag › array is equal to array

    expect(received).toBe(expected) // Object.is equality

    Expected: "false"
    Received: "true"

  ● liquid.golden.unless_tag › array is equal to array from context

    expect(received).toBe(expected) // Object.is equality

    Expected: "false"
    Received: "true"

Test Suites: 1 failed, 1 total
Tests:       23 failed, 822 passed, 845 total
Snapshots:   0 total
Time:        1.999 s
Ran all test suites.
```
