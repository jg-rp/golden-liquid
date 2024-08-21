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
Tests:       12 failed, 876 passed, 888 total
Snapshots:   0 total
Time:        4.301 s
Ran all test suites.
```
