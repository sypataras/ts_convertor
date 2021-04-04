# TsConvertor

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ts_convertor`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ts_convertor'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ts_convertor

add to your project

```ruby
  require 'ts_convertor'
```

## Usage

In version 0.1.3 is valid `Speed`, `Weight`, `Length` convertors

To convert

```
  TsConvertor.[metric]_convert(amount, [var1], [var2])
```

metric = `speed` , vars = `%w[km_h km_m mile_h mile_m knots]`

metric = `weight` , vars = `%w[kg pound ton gram]`

metric = `length` , vars = `%w[km mile meter yard foot]`

example

```ruby
  result = TsConvertor.speed_convert(60, 'km_h', 'mile_h')

  result.eql?(37.2822714)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ts_convertor.

