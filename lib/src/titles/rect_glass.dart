part of '../../title_widget.dart';

/// The title configuring with glass effect into rectangle clipping.
class RectGlassTitle extends Title<RectClipper, RectClipperOptions,
    RectClipperBuilder, GlassEffect, GlassEffectOptions, GlassEffectBuilder> {
  const RectGlassTitle(
    super.text, {
    super.key,
    super.width,
    super.height,
    super.padding,
    super.clipperOptions = const RectClipperOptions(),
    super.effectOptions = const GlassEffectOptions(),
  }) : super(
          clipperBuilder: RectClipper.new,
          effectBuilder: GlassEffect.new,
        );
}
