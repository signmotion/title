# Title Widget

![Cover - TitleWidget](https://raw.githubusercontent.com/signmotion/title_widget/master/images/cover.webp)

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Pub Package](https://img.shields.io/pub/v/title_widget.svg?logo=dart&logoColor=00b9fc&color=blue)](https://pub.dartlang.org/packages/title_widget)
[![Code Size](https://img.shields.io/github/languages/code-size/signmotion/title_widget?logo=github&logoColor=white)](https://github.com/signmotion/title_widget)
[![Publisher](https://img.shields.io/pub/publisher/title_widget)](https://pub.dev/publishers/syrokomskyi.com)

[![Build Status](https://img.shields.io/github/actions/workflow/status/signmotion/title_widget/flutter-ci.yml?logo=github-actions&logoColor=white)](https://github.com/signmotion/title_widget/actions)
[![Pull Requests](https://img.shields.io/github/issues-pr/signmotion/title_widget?logo=github&logoColor=white)](https://github.com/signmotion/title_widget/pulls)
[![Issues](https://img.shields.io/github/issues/signmotion/title_widget?logo=github&logoColor=white)](https://github.com/signmotion/title_widget/issues)
[![Pub Score](https://img.shields.io/pub/points/title_widget?logo=dart&logoColor=00b9fc)](https://pub.dev/packages/title_widget/score)

A widget for visualizing a customizable title with glass effect, gradient, rounded corners or/and free shape.
Feel free to use it in your awesome projects.

Share some ❤️ and star repo to support the project.

## Usage

### With Text (String)

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

Created [with ❤️](https://syrokomskyi.com)
