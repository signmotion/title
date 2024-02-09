part of '../../title_widget.dart';

extension ColorExt on ui.Color {
  /// Make the color brighter.
  ui.Color brighten([int percent = 12]) {
    assert(1 <= percent && percent <= 100,
        'Percentage must be between 1 and 100.');

    final p = percent / 100;

    return ui.Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }
}
