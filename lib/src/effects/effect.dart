part of '../../title_widget.dart';

typedef EffectBuilder<E extends Effect, O extends EffectOptions> = E Function(
    O options);

/// Base class for own effect.
abstract class Effect<O extends EffectOptions> {
  const Effect(this.options);

  final O options;
  O get o => options;

  Widget make(Widget w, Title title);
}

/// Base class for options of effect.
class EffectOptions {
  const EffectOptions();
}
