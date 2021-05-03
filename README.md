# Rack::FlocBlock

Rack middleware to block Google's FLoC on your site.

Sets `Permissions-Policy` header to `interest-cohort=()`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-floc_block'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rack-floc_block

## Usage

### Rails usage

Create an initializer to add the middleware to your stack:

```ruby
# config/initializers/floc_block.rb

Rails.application.config.middleware.use Rack::FlocBlock
```

### Non-Rails Rack usage

For non-Rails Rack apps, use the middleware directly in your rackup file.

```ruby
# config.ru

use Rack::FlocBlock
run MyApp
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/aergonaut/rack-floc_block>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/aergonaut/rack-floc_block/blob/main/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rack::FlocBlock project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/aergonaut/rack-floc_block/blob/master/CODE_OF_CONDUCT.md).
