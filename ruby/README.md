# Moon Phases API - Ruby Gem

Moon Phases calculates the current lunar phase, illumination percentage, and lunar age for today. It reports waxing or waning status, Earth-moon distance in Earth radii and kilometers, the next principal phase and emoji representations, while paid plans add custom date queries and the dates of the next new moon, first quarter, full moon and last quarter.

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
response = client.execute({
  today: true,
  phases: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ today: true, phases: true })
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
    "date": "2026-10-27",
    "phase": "Full",
    "phaseEmoji": "🌕",
    "illumination": 98.8,
    "waxing": false,
    "waning": true,
    "lunarAge": 15.775469393347242,
    "lunarAgePercent": 0.534207769602574,
    "lunationNumber": 1285,
    "lunarDistance": 57.48396905317442,
    "nextFullMoon": "2026-11-24T17:29:23.611Z",
    "lastFullMoon": "2026-10-26T04:45:20.833Z",
    "daysToFullMoon": 29,
    "daysSinceFullMoon": 1,
    "lunarDistanceKm": 366230,
    "nextPhase": "Last Quarter",
    "nextPhaseDate": "2026-11-02T13:56:21.527Z",
    "daysToNextPhase": 6,
    "nextNewMoon": "2026-11-09T23:07:22.222Z",
    "lastNewMoon": "2026-10-11T10:23:19.444Z",
    "daysToNewMoon": 14,
    "daysSinceNewMoon": 16,
    "nextFirstQuarter": "2026-11-17T08:18:22.916Z",
    "nextLastQuarter": "2026-11-02T13:56:21.527Z"
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
