part of '../../title.dart';

class NothingEffect extends Effect<EffectOptions> {
  const NothingEffect(super.options);

  @override
  Widget make(Widget w, Title title) => w;
}
