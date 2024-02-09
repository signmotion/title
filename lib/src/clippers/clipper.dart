part of '../../title_widget.dart';

typedef ClipperBuilder<C extends Clipper, O extends ClipperOptions> = C
    Function(O options);

abstract class Clipper<O extends ClipperOptions> {
  const Clipper(this.options);

  final O options;
  O get o => options;

  Widget make(Widget w, Title title);
}

class ClipperOptions {
  const ClipperOptions({
    this.width,
    this.height,
    this.padding = EdgeInsets.zero,
    this.margin = const EdgeInsets.all(12),
    List<Color>? gradient,
    this.opacity = 1.0,
    this.inverse = false,
  }) : _gradient = gradient;

  final num? width;
  final num? height;

  final List<Color>? _gradient;
  List<Color> get initializedGradient => _gradient ?? const [];

  final double opacity;

  final bool inverse;

  final EdgeInsets padding;

  EdgeInsets get invertedPadding => EdgeInsets.only(
        top: padding.bottom,
        right: padding.left,
        bottom: padding.top,
        left: padding.right,
      );

  final EdgeInsets margin;

  EdgeInsets get invertedMargin => EdgeInsets.only(
        top: margin.bottom,
        right: margin.left,
        bottom: margin.top,
        left: margin.right,
      );
}

abstract class ClipperView<O extends ClipperOptions> extends StatefulWidget {
  const ClipperView({
    super.key,
    required this.options,
    required this.child,
  });

  final Widget child;

  final O options;
  O get o => options;

  @override
  State<ClipperView> createState() => ClipperViewState();
}

class ClipperViewState extends State<ClipperView> {
  Color? color;

  List<Color>? gradient;
  List<Color>? invertedGradient;

  bool get needGradient => widget.o.opacity > 0.0;

  void initContextState(BuildContext context) {
    color ??= widget.o.initializedGradient.isEmpty
        ? Theme.of(context).primaryColor
        : widget.o.initializedGradient.first;

    gradient ??= widget.o.initializedGradient.length < 2
        ? [color!, color!.brighten(36)]
        : widget.o.initializedGradient;

    invertedGradient ??= gradient!.reversed.toList();
  }

  /// ! If this method overriding call [initContextState] first.
  @override
  Widget build(BuildContext context) {
    initContextState(context);

    return Container(
      width: widget.o.width?.toDouble(),
      height: widget.o.height?.toDouble(),
      margin: widget.o.inverse ? widget.o.invertedMargin : widget.o.margin,
      child: clipped,
    );
  }

  /// Override this getter for own clipper.
  /// See [RectClipperView] for example.
  Widget get clipped => childForClip;

  Widget get childForClip => Container(
        padding: widget.o.inverse ? widget.o.invertedPadding : widget.o.padding,
        decoration: needGradient
            ? null
            : BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.o.inverse ? invertedGradient! : gradient!,
                ),
              ),
        child: widget.child,
      );
}
