# Golden Liquid Change Log

## Version 0.5.0

- Test automatic whitespace suppression in blank blocks.
- Test special `first` and `last` properties.

## Version 0.4.0

- Test that logical operators are right associative.
- Avoid testing internal string representations of arrays and ranges. Some test cases were failing in a misleading way when a Liquid engine's string representation of an array does not match that of the reference implementation. Now we explicitly join the elements of arrays instead of outputting them directly.
