# Title Widget

![Cover - Title Widget](https://raw.githubusercontent.com/signmotion/title/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/signmotion/title/master/LICENSE)

A widget for visualizing a customizable title with glass effect, gradient, rounded corners or/and free shape.

## Usage

### Title

```dart
final background = Image.asset('image.webp');
const title = RectGlassTitle('Forgotten Dreams');

return Stack(children: [background, title]);
```

Output:

![Screenshott - Title](https://raw.githubusercontent.com/signmotion/title/master/images/screenshots/1.webp)

## Welcome

This package is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/title). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/search?q=%5Btitle%5D+flutter).

## TODO

- How to construct own `Clipper`s and `Effect`s.
