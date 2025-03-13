# Golden Liquid

A test suite for [Liquid](https://shopify.github.io/liquid/), the safe, customer-facing template language for flexible web apps.

Intended for situations where template authors are untrusted and, perhaps, not software developers, Liquid is deliberately both restrictive and forgiving. It is restrictive in that Liquid expressions are somewhat limited compared to those found in other template languages, and forgiving in the way it automatically coerces data types and handles undefined variables.

The tests defined in `golden_liquid.json` attempt to cover many of Liquid's limitations, as well as the behavior of all standard tags and filters.

- [Standard Liquid](#standard-liquid)
- [Test File Schema](#test-file-schema)
- [Test Tags](#tags)
- [Contributing](#contributing)

## Standard Liquid

For our purposes "standard" Liquid is the one described [here](https://shopify.github.io/liquid/) with [Shopify/Liquid](https://github.com/Shopify/liquid) being the reference implementation. Not to be confused with the extended variation of Liquid used for Shopify stores.

All tests pass with Liquid version 5.8.1 and Ruby 3. Some `round` filter test cases fail with Ruby 2.7 due to changes with Ruby's BigDecimal library (see issue [#1590](https://github.com/Shopify/liquid/issues/1590)). If you have Ruby installed, you can run the test suite against the reference implementation by cloning this repository and running the following commands from the project root.

```
bundle install
bundle exec ruby golden_liquid.rb
```

## Test file schema

`golden_liquid.json` looks like this:

```json
{
  "description": "Golden Liquid test suite",
  "tests": [
    {
      "name": "identifiers, ascii lowercase",
      "template": "{% assign foo = 'hello' %}{{ foo }} {{ bar }}",
      "data": {
        "bar": "goodbye"
      },
      "tags": [
        "strict"
      ],
      "result": "hello goodbye"
    },
    .
    .
    .
  ]
}
```

Individual test files and `golden_liquid.json` are validated against `golden_liquid.schema.json`. Each object in the `tests` array can include the following fields.

| Field       | Description                                                                                                                                                                                |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `name`      | A descriptive name that uniquely identifies the test case.                                                                                                                                 |
| `template`  | Liquid source text as a string.                                                                                                                                                            |
| `result`    | The expected result of rendering the template with the associated context data.                                                                                                            |
| `data`      | A JSON object mapping strings to arbitrary, possibly nested, strings, numbers, arrays, objects and booleans. These are the variables that the associated template should be rendered with. |
| `templates` | A JSON object mapping strings to strings. You can think of it as a mock file system for testing `{% include %}` and `{% render %}`.                                                        |
| `invalid`   | A Boolean indicating if the test case should raise/throw an exception/error.                                                                                                               |
| `tags`      | An array of strings used to categorize the test case.                                                                                                                                      |

## Tags

| Tag      | Description                                                                                                                |
| -------- | -------------------------------------------------------------------------------------------------------------------------- |
| `strict` | Indicates that the test case should be parsed and rendered in strict mode, if a strict mode is available.                  |
| `absent` | Indicates that the test cases is asserting the absence of a feature. For example, the absence of a logical `not` operator. |

## Contributing

TODO
