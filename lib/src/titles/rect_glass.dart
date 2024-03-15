part of '../../title_widget.dart';

/// The title configuring with glass effect into rectangle clipping.
class RectGlassTitle extends Title<RectClipper, RectClipperOptions,
    RectClipperBuilder, GlassEffect, GlassEffectOptions, GlassEffectBuilder> {
  const RectGlassTitle({
    super.key,
    super.text,
    super.widget,
    super.textScaler,
    super.width,
    super.height,
    super.padding,
    super.clipperBuilder = RectClipper.new,
    super.clipperOptions = const RectClipperOptions(),
    super.effectBuilder = GlassEffect.new,
    super.effectOptions = const GlassEffectOptions(),
    super.textStyle,
    super.textColor,
  });
}
