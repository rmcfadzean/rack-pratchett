# Rack::Pratchett

A simple gem to include X-Clacks-Overhead headers into any rack (rails, sinatra, etc) application.

Inspired by [this thread](http://redd.it/2yt9j6) on reddit.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-pratchett'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-pratchett

## Usage

### Stand Alone Rack App

```ruby
# config.ru
require 'rack'
require 'rack/pratchett'

use Rack::Pratchett
app = proc do |env|
  [ 200, {'Content-Type' => 'text/plain'}, ["GNU Terry Pratchett"] ]
end
```
Then run
`rackup`

### Sinatra
```ruby
require 'sinatra'
require 'rack/pratchett'

use Rack::Pratchett

get '/' do
  'GNU Terry Pratchett'
end
```

### Rails
```ruby
# Add it to your Gemfile
gem 'rack-pratchett'
```

```ruby
# In config/application.rb
config.middleware.use Rack::Pratchett
```
or

```ruby
# In config.ru
use Rack::Pratchett
```
## Testing

`rspec`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/wonderbread/rack-pratchett/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


GNU Terry Pratchett
