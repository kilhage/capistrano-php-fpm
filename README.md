# Capistrano::PhpFpm

capistrano-php-fpm support for Capistrano 3.x

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.0.0'
gem 'capistrano-php-fpm'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-php-fpm

## Usage

Require in Capfile to use the default task:

```ruby
require 'capistrano/php-fpm'
```

The task will run before deploy:updated as part of Capistrano's default deploy, or can be run in isolation with cap production php_fpm:reload

The task will run before `deploy:updated` as part of Capistrano's default deploy,
or can be run in isolation with `cap production php_fpm:reload`

Configurable options:

```ruby
set :nginx_reload_command, '/etc/init.d/php-fpm reload' # default
set :nginx_roles, :all # default
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
