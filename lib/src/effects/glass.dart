part of '../../title_widget.dart';

typedef GlassEffectBuilder = EffectBuilder<GlassEffect, GlassEffectOptions>;

class GlassEffect extends Effect<GlassEffectOptions> {
  const GlassEffect(super.options);

  @override
  Widget make(Widget w, Title title) => w.asGlass(
        blurX: o.blur.$1.toDouble(),
        blurY: o.blur.$2.toDouble(),
      );
}

class GlassEffectOptions extends EffectOptions {
  const GlassEffectOptions({
    this.blur = (2, 2),
  });

  final (num, num) blur;
}
