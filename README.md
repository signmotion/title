# Title Widget

![Cover - TitleWidget](https://raw.githubusercontent.com/signmotion/title_widget/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/badge/doc-title_widget-blue)](https://pub.dartlang.org/packages/title_widget)
[![Build Status](https://github.com/signmotion/title_widget/actions/workflows/flutter-ci.yml/badge.svg)](https://github.com/signmotion/title_widget/actions/workflows/flutter-ci.yml)
[![Publisher](https://img.shields.io/pub/publisher/title_widget)](https://pub.dev/publishers/syrokomskyi.com)

A widget for visualizing a customizable title with glass effect, gradient, rounded corners or/and free shape.
Feel free to use it in your awesome projects.

## Usage

### With Text

```dart
final background = Image.asset('image.webp');
const title = RectGlassTitle(text: 'Forgotten Dreams');

return Stack(children: [background, title]);
```

### With Widget (Icon)

```dart
const icon = Icon(Icons.hiking, color: Colors.white);
final title = RectGlassTitle(widget: icon);

return Stack(children: [background, title]);
```

![Screenshot - TitleWidget](https://raw.githubusercontent.com/signmotion/title_widget/master/images/screenshots/1.gif)

## Welcome

Requests and suggestions are warmly welcome.

This package is open-source, stable and well-tested. Development happens on
[GitHub](https://github.com/signmotion/title_widget). Feel free to report issues
or create a pull-request there.

General questions are best asked on
[StackOverflow](https://stackoverflow.com/search?q=title_widget+flutter).

## TODO

- How to construct own `Clipper`s and `Effect`s.
- Add an option for fully customizable gradient.
