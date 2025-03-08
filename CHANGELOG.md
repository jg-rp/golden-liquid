# Golden Liquid Change Log

## Version 0.25.0

- Changed output test "chained bracketed identifier index no dot" to be strict and to raise/throw and error.
- Test the new `docs` tag.
- Test array index bounds.
- Test whitespace in range expressions.
- Test whitespace in variables (paths to data).
- Test whitespace as argument to the `split` filter.
- Test the `contains` operator when undefined/nil/null are involved.
- Test the lack of `startswith`, `endswith`, `haskey` and `in` operators.

And change output test "chained bracketed identifier index no dot" to be strict and to raise/throw and error.

## Version 0.24.0

- Updated Shopify/Liquid from GitHub main.
- Updated Python Liquid from GitHub main.
- Updated LiquidJS to 10.21.0.
- Updated liquidpy to 0.8.3.
- Updated Python Liquid2 to 0.3.0.

- Test the new `find` filter.
- Test the new `find_index` filter.
- Test the new `has` filter.
- Test the new `reject` filter.

## Version 0.23.1

- Moved folder `liquid` to `shopify_liquid`.
- Updated Shopify/Liquid from GitHub main.
- Updated LiquidJS to 10.20.1
- Added Python Liquid2

## Version 0.23.0

- Test `{% when %}` tags after `{% else %}` when using `{% case %}`.
- Test multiple `{% else %}` blocks following a `{% case %}` tag.
- Test string membership with the `contains` operator.
- Test `{% break %}` and `{% continue %}` from a `{% tablerow %}` block.

- Updated Shopify/Liquid from GitHub main
- Updated Shopify/Liquid runner to use its new `Environment` for configuring our in-memory file system.
- Updated LiquidJS to 10.16.3
- Updated Python Liquid from GitHub main

## Version 0.22.0

- Test `{% else %}` tag expressions (anything between `else` and `%}`).
- Test extra `{% else %}` and `{% elsif %}` blocks after the first `{% else %}` tag.

- Update Shopify/Liquid from Github main
- Update LiquidScript to 1.8.2
- Update Python Liquid to 1.12.1

## Version 0.21.0

- Test the truthiness of empty arrays, objects and strings.
- Test comparing empty arrays and objects to the special `empty` keyword.
- Test implicit string conversion with the `contains` membership operator.
- Test comparing strings with `>`, `<`, `<=` and `>=`.
- Test comparing undefined variables to `nil` and `null`.

- Update Shopify/liquid from GitHub main
- Update LiquidJS to 10.10.0
- Update Liquidpy to 0.8.2
- Update LiquidScript to 1.8.1
- Update Python Liquid to 1.11.0

## Version 0.20.0

- Test formatting dates with the `date` filter and `%s`.
- Test the `split` filter when the string to be split and the delimiter are equal.
- Test the `split` filter when the string to be split is empty.

- Update Shopify/liquid from GutHub main
- Update LiquidJS to 10.9.4
- Update Python Liquid to 1.10.2

## Version 0.19.0

- Test top-level bracketed and quoted variable names.

- Update LiquidJS to 10.9.2
- Update LiquidScript to 1.8.0
- Update Python Liquid to 1.10.0

## Version 0.18.0

- Fixed Shopify/Liquid test runner by adding `line_numbers: true` to `Liquid::Template.parse`. See [Shopify/Liquid#1734](https://github.com/Shopify/liquid/issues/1734).

- Test shorthand comment tags with quotes and apostrophes.
- Test `liquid` tags that contain `liquid` tags.
- Test the `map` filter with a hash/mapping-like input.
- Test that the `map` filter flattens its input when that input is a nested array-like object.
- Test the new `sum` filter (excluding summation of float inputs).

- Update Shopify/liquid from GitHub master
- Update LiquidJS to 10.8.4
- Update Liquidpy to 0.8.1
- Update Python Liquid to 1.9.3

## Version 0.17.0

- Test conditional expression type coercion.

- Update LiquidJS to 10.7.0
- Fixed LiquidJS test runner import of `FS`.
- Update Liquidpy to 0.8.0

## Version 0.16.0

- Test array equality in `if`, `unless` and `case` tags.

- Update LiquidJS to 10.6.0
- Update LiquidScript to 1.7.0
- Update Python Liquid from GitHub main

## Version 0.15.0

- More `assign` tag test cases.
- Test resolving bracketed variables without a leading identifier.
- Test nested bracketed variables.
- Test whitespace control with `raw` tags.

- Update Shopify/liquid from GitHub master
- Update Python Liquid from GitHub main

## Version 0.14.0

- Test undefined `cycle` tag group names.
- Test named `cycle` tags with changing items.
- Test named `cycle` tags with differing number of items.
- Test loop over a string literal with the `for` tag.
- Test loop over a variable resolving to a string with the `for` tag.
- Test `round` filter argument edge cases.

- Update Shopify/liquid from GitHub master
- Update LiquidJS to 10.4.0
- Update LiquidScript to 1.6.0
- Update Python Liquid to 1.8.0 from GitHub main
- Test against Python Liquid's `liquid.future.Environment`.

## Version 0.13.0

- Test `or` separated `when` tag expressions.
- Test mixing `,` and `or` separated `when` tag expressions.
- Test commas in string literals that appear in the `when` tag.
- Test comma separated `for` tag arguments.
- Test overwrite `render` tag keyword argument.

- Update Shopify/liquid from GitHub master
- Update LiquidJS to 10.2.0
- Update LiquidScript to 1.5.0
- Update Python Liquid to 1.5.1

## Version 0.12.0

- Test `tablerowloop.row`.
- Test `tablerowloop.col_last` with no `cols` parameter.
- Test `for` and `tablerow` tag arguments given as strings.
- Test `include` tag scope with assignment to a keyword argument.
- Test that the `truncatewords` filter removes all leading and trailing whitespace.

- Update Shopify/liquid from GitHub master.
- Update Python Liquid to 1.4.6
- Update LiquidJS to 9.42.1
- Update LiquidScript to 1.4.1
- Update Liquidpy to 0.7.6

## Version 0.11.0

- Test that `0.0` is not falsy.
- Test that the `date` filter handles unix timestamps given as integers or strings.

- Publish this test suite in YAML as well as JSON
- Update Python Liquid to 1.4.5
- Update LiquidJS to 9.42.0
- Update LiquidScript to 1.4.0

## Version 0.10.0

- Test ranges where start and stop values are equal.
- Test that `0` is not falsy.
- Test that `1` is not truthy.
- Test that `0` is not equal to `false`.
- Test that `1` is not equal to `true`.

- Update Shopify/liquid to 5.4.0
- Update LiquidJS to 9.40.0
- Update Python Liquid to 1.4.2
- Update LiquidScript to 1.3.1

## Version 0.9.1

- Update LiquidJS to 9.39.1

## Version 0.9.0

- Test allowed identifier characters.
- Test new inline comment tag.

- Update Shopify/liquid to 5.4.0.alpha
- Update Liquidpy to 0.7.5
- Update LiquidScript to 1.3.0

## Version 0.8.1

- Update LiquidScript to 1.2.0-beta.1
- Update Python Liquid to 1.2.1.

## Version 0.8.0

- Test keyword filter arguments before positional filter arguments.
- Test explicit falsy values passed to the `where` filter.

- Add LiquidScript test runner.
- Update Ruby Liquid and dependencies.
- Update Python Liquid and dependencies.
- Update LiquidJS.

## Version 0.7.0

- Test `cycle` tag groups with variable names.
- Clarify `divided_by` filter with float value and integer argument.
- Test `forloop.name`.
- Test `remove_last` filter.
- Test `replace_last` filter.
- Test sort an array of incompatible types using the `sort` filter.
- Test special built-in `first`, `last` and `size` properties of an object that already has those properties/keys.
- Test striping of `script` and `style` HTML tags with the `strip_html` filter.
- Test the `uniq` filter with a key argument and an array of objects with missing key properties.

- Update Shopify/liquid to 5.3.0.alpha.
- Update Python Liquid to 1.1.5.
- Update LiquidJS to 9.35.2.

## Version 0.6.0

- Clarify some for loop test cases involving `offset: continue`
- Upgrade liquidjs to 9.33.1, which implements `offset: continue`

## Version 0.5.0

- Test automatic whitespace suppression in blank blocks.
- Test special `first` and `last` properties.

## Version 0.4.0

- Test that logical operators are right associative.
- Avoid testing internal string representations of arrays and ranges. Some test cases were failing in a misleading way when a Liquid engine's string representation of an array does not match that of the reference implementation. Now we explicitly join the elements of arrays instead of outputting them directly.
