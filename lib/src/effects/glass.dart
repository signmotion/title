part of '../../title_widget.dart';

typedef GlassEffectBuilder = EffectBuilder<GlassEffect, GlassEffectOptions>;

/// Title with glass effect.
class GlassEffect extends Effect<GlassEffectOptions> {
  const GlassEffect(super.options);

  @override
  Widget make(Widget w, Title title) => w.asGlass(
        blurX: o.blur.$1.toDouble(),
        blurY: o.blur.$2.toDouble(),
        tintColor: o.tintColor,
        frosted: o.frosted,
      );
}

class GlassEffectOptions extends EffectOptions {
  const GlassEffectOptions({
    this.blur = (2, 2),
    this.tintColor = Colors.white,
    this.frosted = true,
  });

  final (num, num) blur;
  final Color tintColor;
  final bool frosted;
}
