# Golden Liquid

A test suite for [Liquid](https://shopify.github.io/liquid/), the safe, customer-facing template language for flexible web apps.

The tests defined in [golden_liquid.json](golden_liquid.json) attempt to cover the syntax and behavior of all **standard** tags and filters. This is a work in progress and will lag behind changes to [Shopify/Liquid](https://github.com/Shopify/liquid).

To use this test suite, it's recommended you embed this repository as a git [submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules) of your repository.

- [Standard Liquid](#standard-liquid)
- [Test File Schema](#test-file-schema)
- [Test Tags](#tags)
- [Contributing](#contributing)

## Standard Liquid

For our purposes "standard" Liquid is the one described [here](https://shopify.github.io/liquid/) with [Shopify/Liquid](https://github.com/Shopify/liquid) being the reference implementation. Not to be confused with the extended variation of Liquid used for Shopify stores.

All tests pass with Shopify/liquid Ruby 3. If you have Ruby installed, you can run the test suite against the reference implementation by cloning this repository and running the following commands from the project root.

```
bundle install
bundle exec rake
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

- `name` - A descriptive name that uniquely identifies the test.
- `template` - Liquid source text as a string.
- `data` - A JSON object mapping strings to arbitrary, possibly nested, strings, numbers, arrays, objects and booleans. These are the variables that the associated template should be rendered with.
- `result` - The expected result of rendering the template with the associated context data.
- `results` - An array of possible expected results from rendering the template with the given context data.
- `templates` - A JSON object mapping strings to strings. You can think of it as a mock file system for testing `{% include %}` and `{% render %}`.
- `invalid` - A Boolean indicating if the test case should raise/throw an exception/error.
- `tags` - An optional array of strings used to categorize the test case.

## Tags

Tags are used to categorize test cases. This allows consumers of this test suite to easily exclude or target entire categories of tests, or enable/disable features in certain cases.

- `strict` - Indicates that the test case should be parsed and rendered in strict mode, if a strict mode is available.
- `absent` - Indicates that the test cases is asserting the absence of a feature. For example, the absence of a logical `not` operator.
- `utc` - The test case assumes the host timezone is set to UTC

Pull requests to add or update tags are welcome.

## Benchmark fixtures

The `benchmark_fixtures` folder contains Liquid templates and data useful for benchmarking Liquid engines. For each folder in `benchmark_fixtures`, the convention is that `data.json` contains render context data, and `templates/index.liquid` is the "base" template that might include/render other templates in the `templates` folder.

Pull requests for more benchmark fixtures are welcome.

# Contributing

See [CONTRIBUTING.md](https://github.com/jg-rp/golden-liquid/blob/main/CONTRIBUTING.md).
