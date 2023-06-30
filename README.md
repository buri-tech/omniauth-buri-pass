# OmniAuth Buri Pass

This gem contains the Buri Pass strategy for [OmniAuth](https://github.com/omniauth/omniauth).

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add omniauth-buri-pass --github buri-tech/omniauth-buri-pass

## Usage

Here's an example for adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :buri_pass, ENV["BURI_PASS_CLIENT_ID"], ENV["BURI_PASS_CLIENT_SECRET"]
end
```

You can now access the OmniAuth Buri Pass URL: `/auth/buri_pass`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/buri-tech/omniauth-buri-pass.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
