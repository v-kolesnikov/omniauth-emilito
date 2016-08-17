# Omniauth Emilito

Omniauth(https://github.com/omniauth/omniauth) [OAuth2](https://github.com/intridea/omniauth-oauth2) strategy for [Emilito](https://github.com/v-kolesnikov/emilito)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-emilito'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-emilito

## Usage

```ruby
# config/initializers/omniauth.rb

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :emilito,
           ENV['EMILITO_APP_CLIENT_ID'],
           ENV['EMILITO_APP_CLIENT_SECRET'],
           client_options: {
             site: ENV['EMILITO_WEB_URL']
           }
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/omniauth-emilito.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

