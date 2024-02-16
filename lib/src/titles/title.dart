part of '../../title_widget.dart';

/// Base class for title.
abstract class Title<
    C extends Clipper,
    CO extends ClipperOptions,
    CB extends ClipperBuilder<C, CO>,
    E extends Effect,
    EO extends EffectOptions,
    EB extends EffectBuilder<E, EO>> extends StatelessWidget {
  const Title(
    this.text, {
    super.key,
    this.width,
    this.height,
    this.padding = const EdgeInsets.all(12),
    this.clipperBuilder,
    this.clipperOptions,
    this.effectBuilder,
    this.effectOptions,
    this.textStyle,
    this.textColor,
  });

  final String text;

  final num? width;
  final num? height;

  final EdgeInsets padding;

  final CB? clipperBuilder;
  final CO? clipperOptions;
  Clipper get clipper => clipperBuilder == null
      ? const NothingClipper(ClipperOptions())
      : clipperBuilder!(clipperOptions!) as Clipper;

  final EB? effectBuilder;
  final EO? effectOptions;
  Effect get effect => effectBuilder == null
      ? const NothingEffect(EffectOptions())
      : effectBuilder!(effectOptions!) as Effect;

  /// A theme style with [Theme.of(context).textTheme.headlineLarge]
  /// will be used if [textStyle] is undefined.
  final TextStyle? textStyle;

  /// A theme color will be used if [textColor] is undefined.
  final Color? textColor;

  @override
  Widget build(BuildContext context) =>
      _clipTransformer(_effectTransformer(coreBuild(context), this), this);

  Widget _clipTransformer(Widget widget, Title title) =>
      clipper.make(widget, title);

  Widget _effectTransformer(Widget coreWidget, Title title) =>
      effect.make(coreWidget, title);

  Widget coreBuild(BuildContext context) => Padding(
        padding: padding,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle?.copyWith(color: textColor) ??
              Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: textColor),
        ),
      );
}
