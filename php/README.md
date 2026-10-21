# Moon Phases API - PHP Package

Moon Phases calculates the current lunar phase, illumination percentage, and lunar age for today. It reports waxing or waning status, Earth-moon distance, and emoji representations, while paid plans add custom date queries and full moon tracking.

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
$response = $client->execute(['today' => true]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Moonphases\Client;
use APIVerve\Moonphases\Exceptions\APIException;
use APIVerve\Moonphases\Exceptions\ValidationException;

try {
    $response = $client->execute(['today' => true]);
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
