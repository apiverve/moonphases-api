# Moon Phases API

Moon Phases calculates the current lunar phase, illumination percentage, and lunar age for today. It reports waxing or waning status, Earth-moon distance in Earth radii and kilometers, the next principal phase and emoji representations, while paid plans add custom date queries and the dates of the next new moon, first quarter, full moon and last quarter.

[![npm version](https://img.shields.io/npm/v/@apiverve/moonphases.svg)](https://www.npmjs.com/package/@apiverve/moonphases)

This is a JavaScript wrapper for the [Moon Phases API](https://apiverve.com/marketplace/moonphases?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/moonphases
```

Using yarn:
```shell
yarn add @apiverve/moonphases
```

---

## Configuration

Before using the Moon Phases API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Moon Phases API documentation is found here: [https://docs.apiverve.com/ref/moonphases](https://docs.apiverve.com/ref/moonphases?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const moonphasesAPI = require('@apiverve/moonphases');
const api = new moonphasesAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  today: true,
  phases: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  today: true,
  phases: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  today: true,
  phases: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
