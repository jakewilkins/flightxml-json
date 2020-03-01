# Flightxml::Json

Flightxml::Json provides access to both FlightXML2 and FlightXML3 data via the JSON API.

The main interface is generated based on the definitions published in the WSDL
for the SOAP service, and generation is performed nightly via GitHub Actions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flightxml3-json'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flightxml3-json

## Usage

You can initialize a Client for V2 or V3 via:

```ruby
Flightxml::Client.new(username: "yourusername", token: "yourtoken", version: 3)
```

The `version` keywarg is optional and defaults to version three.

The methods available to each version are most easily found in the docs for
[version 2](https://www.rubydoc.info/github/jakewilkins/flightxml-json/master/Flightxml/V2/Operations) or
[version 3](https://www.rubydoc.info/github/jakewilkins/flightxml-json/master/Flightxml/V3/Operations)

Full generated documentation is available on [rubydoc.info](https://www.rubydoc.info/github/jakewilkins/flightxml-json/master).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jakewilkins/flightxml3-json. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Flightxml3::Json project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jakewilkins/flightxml3-json/blob/master/CODE_OF_CONDUCT.md).
