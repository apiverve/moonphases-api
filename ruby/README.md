# Moon Phases API - Ruby Gem

Moon Phases calculates the current lunar phase, illumination percentage, and lunar age for today. It reports waxing or waning status, Earth-moon distance, and emoji representations, while paid plans add custom date queries and full moon tracking.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_moonphases'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_moonphases
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_moonphases'

# Initialize the client
client = APIVerve::Moonphases::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ today: true })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ today: true })
  puts response["data"]
rescue APIVerve::Moonphases::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Moonphases::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Moonphases::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "phase": "Waning Crescent",
    "phaseEmoji": "🌘",
    "illumination": 9.9,
    "waxing": false,
    "waning": true,
    "lunarAge": 26.61193415670738,
    "lunarAgePercent": 0.9011650706672754,
    "lunationNumber": 1274,
    "lunarDistance": 63.77810628163608,
    "nextFullMoon": "2026-01-16T00:00:00Z",
    "lastFullMoon": "2025-11-17T00:00:00Z",
    "daysToFullMoon": 28,
    "daysSinceFullMoon": 2
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/moonphases?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/moonphases?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/moonphases?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
