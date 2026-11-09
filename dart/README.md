# Moon Phases API - Dart/Flutter Client

Moon Phases calculates the current lunar phase, illumination percentage, and lunar age for today. It reports waxing or waning status, Earth-moon distance in Earth radii and kilometers, the next principal phase and emoji representations, while paid plans add custom date queries and the dates of the next new moon, first quarter, full moon and last quarter.

[![pub package](https://img.shields.io/pub/v/apiverve_moonphases.svg)](https://pub.dev/packages/apiverve_moonphases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Moon Phases API](https://apiverve.com/marketplace/moonphases?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_moonphases: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_moonphases/apiverve_moonphases.dart';

void main() async {
  final client = MoonphasesClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'today': true,
      'phases': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Moon Phases API](https://apiverve.com/marketplace/moonphases?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/moonphases](https://docs.apiverve.com/ref/moonphases?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
