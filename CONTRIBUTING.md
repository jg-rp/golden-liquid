# Contributing to the Liquid golden test suite

Contributions and questions are welcome. Feel free to ask questions, report bugs or open pull requests.

## Making changes to the test suite

You need to have [Ruby](https://www.ruby-lang.org/en/documentation/installation/) installed to build the test suite and run it against [Shopify/liquid](https://github.com/Shopify/liquid). It's OK to rely on GitHub CI if you don't want to install Ruby.

To add or modify tests:

- **Do not modify `golden_liquid.json` directly**
- Add/edit file(s) in the `tests` directory
- Optionally run `bundle exec rake` to build `golden_liquid.json` and test it against Shopify/liquid. GitHub CI will do this too.
- Commit and push changes to files in the `tests` directory.

It's OK if you commit changes to `golden_liquid.json` after a local build. It will get overwritten by GitHub CI when merged into the main branch if you do.

### Tags

We use tags to categorize test cases. Tags are arbitrary strings that can be used to filter tests output by the build script, `build.rb`.

List current tags with `bundle exec ruby build.rb --list-tags`. Please consider adding these tags to new test cases where appropriate.
