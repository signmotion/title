part of '../../title.dart';

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
