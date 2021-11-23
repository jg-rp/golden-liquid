# Golden Liquid

A test suite for [Liquid](https://shopify.github.io/liquid/), the safe, customer-facing
template language for flexible web apps.

Intended for situations where template authors are untrusted and, perhaps, not software
developers, Liquid is both restrictive and forgiving. It is restrictive in that Liquid
expressions are somewhat limited compared to those found in other template languages,
and forgiving in the way it automatically coerces data types and handles undefined
variables.

The tests defined in `golden_liquid.json` attempt to cover many of Liquid's limitations,
as well as the behavior of all standard tags and filters.

## Standard Liquid

For our purposes, "standard" Liquid is the one described [here](https://shopify.github.io/liquid/),
with [Ruby Liquid](https://github.com/Shopify/liquid) being the reference implementation.
Not to be confused with the extended variation of Liquid that is used for Shopify stores.

All tests pass with Liquid version 5.1.0. If you have Ruby installed, you can run the
test suite against the reference implementation by cloning this repository and running
the following commands.

```
cd liquid
bundle install
ruby -Ilib:test golden_liquid.rb
```

## Test File Schema

In `golden_liquid.json`, tests are grouped. Each group has a name and an array of test
cases. Including a version number, `golden_liquid.json` looks like this.

```json
{
    "version": "0.1.0",
    "test_groups": [
        {
            "name": "liquid.golden.abs_filter",
            "tests": [
                {
                    "name": "negative float",
                    "template": "{{ -5.4 | abs }}",
                    "want": "5.4",
                    "context": {},
                    "partials": {},
                    "error": false,
                    "strict": false
                },
                .
                .
            ]
        },
        .
        .
    ]
}
```

For each test case:

**_name_** is a descriptive name for the test case. Together with the group name, it
should uniquely identify the test cases.

**_template_** is the Liquid template source as a string.

**_want_** is the expected result of rendering the template with the associated
context.

**_context_** is JSON object mapping strings to arbitrary, possibly nested, strings,
numbers, arrays, objects and booleans. These are the variables that the associated
template should be rendered with.

**_partials_** is a JSON object mapping strings to strings. You can think of it as a
mock file system for testing `{% include %}` and `{% render %}`.

**_error_** is a boolean indicating if the test case should raise/trow and
exception/error.

**_strict_** is a boolean indicating if the test should be rendered in "strict mode",
if the target environment has a strict mode.
