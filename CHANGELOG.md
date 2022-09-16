# Golden Liquid Change Log

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
