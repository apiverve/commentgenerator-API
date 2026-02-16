# Comment Generator API - Dart/Flutter Client

Comment Generator is a simple tool for generating comments for social media. It returns a list of comments based on the input parameters.

[![pub package](https://img.shields.io/pub/v/apiverve_commentgenerator.svg)](https://pub.dev/packages/apiverve_commentgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Comment Generator API](https://apiverve.com/marketplace/commentgenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_commentgenerator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_commentgenerator/apiverve_commentgenerator.dart';

void main() async {
  final client = CommentgeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'mode': 'text',
      'tone': 'positive',
      'count': 1,
      'emojis': true
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
    "count": 5,
    "mode": "text",
    "tone": "positive",
    "comments": [
      "Great take on this is absolutely fantastic 😍",
      "Great way to put it really connects 🔥",
      "Important message is perfection 😊",
      "Excellent explanation is unforgettable 😍",
      "Precise and insightful is perfection 👏"
    ]
  }
}
```

## API Reference

- **API Home:** [Comment Generator API](https://apiverve.com/marketplace/commentgenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/commentgenerator](https://docs.apiverve.com/ref/commentgenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
