# YJIT

Gem that enables YJIT for you.

## Usage

`require "yjit"` calls `RubyVM::YJIT.enable`. That's it.

## Note

If you use Rails 7.2+, you shouldn't need this gem because the framework does that by default.
([rails/rails#51894](https://github.com/rails/rails/pull/51894)).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
