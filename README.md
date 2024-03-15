# Title Widget

![Cover - TitleWidget](https://raw.githubusercontent.com/signmotion/title_widget/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/signmotion/title_widget/master/LICENSE)

A widget for visualizing a customizable title with glass effect, gradient, rounded corners or/and free shape.
Feel free to use it in your projects.

## Usage

### RectGlassTitle

```dart
final background = Image.asset('image.webp');
const title = RectGlassTitle(text: 'Forgotten Dreams');

return Stack(children: [background, title]);
```

![Screenshott - TitleWidget](https://raw.githubusercontent.com/signmotion/title_widget/master/images/screenshots/1.webp)

## Welcome

Requests and suggestions are warmly welcome.

This package is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/title_widget). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/search?q=%5Btitle%5D+flutter).

## TODO

- How to construct own `Clipper`s and `Effect`s.
- Add an option for fully customizable gradient.
