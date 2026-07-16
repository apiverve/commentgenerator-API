# Comment Generator API - PHP Package

Comment Generator is a simple tool for generating comments for social media. It returns a list of comments based on the input parameters.

## Installation

Install via Composer:

```bash
composer require apiverve/commentgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Commentgenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'mode' => 'text',
    'tone' => 'positive',
    'count' => 1,
    'emojis' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Commentgenerator\Client;
use APIVerve\Commentgenerator\Exceptions\APIException;
use APIVerve\Commentgenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['mode' => 'text', 'tone' => 'positive', 'count' => 1, 'emojis' => true]);
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
    "count": 5,
    "mode": "text",
    "tone": "positive",
    "comments": [
      "You're so right! is a game-changer Wow! 😍",
      "Inspiring stuff gives me all the feels Wow! ✨",
      "Thanks for sharing this gives me all the feels Perfect! 💯",
      "Exactly my thoughts is on fire Wow beyond! 🌟",
      "Great outlook in everything here, very bright! slays! For sure! 😊"
    ]
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/commentgenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/commentgenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/commentgenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
