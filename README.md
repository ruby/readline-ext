# Readline

The Readline module provides interface for GNU Readline.
This module defines a number of methods to facilitate completion
and accesses input history from the Ruby interpreter.
This module supported Edit Line(libedit) too.
libedit is compatible with GNU Readline.

- [GNU Readline](http://www.gnu.org/directory/readline.html)
- [libedit](http://www.thrysoee.dk/editline/)

See RDoc for Readline module.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'readline'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install readline

## Usage

```ruby
require "readline"
while buf = Readline.readline("> ", true)
  p buf
end
```

```ruby
require "readline"
while buf = Readline.readline("> ", true)
  p Readline::HISTORY.to_a
  print("-> ", buf, "\n")
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/readline-ext.
