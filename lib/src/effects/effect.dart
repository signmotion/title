part of '../../title_widget.dart';

typedef EffectBuilder<E extends Effect, O extends EffectOptions> = E Function(
    O options);

abstract class Effect<O extends EffectOptions> {
  const Effect(this.options);

  final O options;
  O get o => options;

  Widget make(Widget w, Title title);
}

class EffectOptions {
  const EffectOptions();
}
