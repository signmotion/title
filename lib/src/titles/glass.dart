part of '../../title_widget.dart';

/// The title configuring with glass effect.
class GlassTitle extends Title<
    Clipper,
    ClipperOptions,
    ClipperBuilder<Clipper, ClipperOptions>,
    GlassEffect,
    GlassEffectOptions,
    GlassEffectBuilder> {
  const GlassTitle(
    super.text, {
    super.key,
    super.width,
    super.height,
    super.padding,
    super.effectOptions = const GlassEffectOptions(),
  }) : super(effectBuilder: GlassEffect.new);
}
