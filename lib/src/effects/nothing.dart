part of '../../title_widget.dart';

/// Title without effect.
class NothingEffect extends Effect<EffectOptions> {
  const NothingEffect(super.options);

  @override
  Widget make(Widget w, Title title) => w;
}
