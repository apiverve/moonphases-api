# Moon Phases API - PHP Package

Moon Phases calculates the current lunar phase, illumination percentage, and lunar age for today. It reports waxing or waning status, Earth-moon distance in Earth radii and kilometers, the next principal phase and emoji representations, while paid plans add custom date queries and the dates of the next new moon, first quarter, full moon and last quarter.

## Installation

Install via Composer:

```bash
composer require apiverve/moonphases
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Moonphases\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'today' => true,
    'phases' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Moonphases\Client;
use APIVerve\Moonphases\Exceptions\APIException;
use APIVerve\Moonphases\Exceptions\ValidationException;

try {
    $response = $client->execute(['today' => true, 'phases' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/moonphases?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/moonphases?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/moonphases?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
