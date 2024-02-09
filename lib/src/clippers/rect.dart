part of '../../title.dart';

typedef RectClipperBuilder = ClipperBuilder<RectClipper, RectClipperOptions>;

class RectClipper extends Clipper<RectClipperOptions> {
  const RectClipper(super.options);

  @override
  Widget make(Widget w, Title title) =>
      RectClipperView(options: options, child: w);
}

class RectClipperOptions extends ClipperOptions {
  const RectClipperOptions({
    super.width,
    super.height,
    super.padding = EdgeInsets.zero,
    super.margin = const EdgeInsets.all(12),
    super.gradient,
    super.opacity = 1.0,
    super.inverse = false,
    this.radius = defaultRadius,
    this.borderRadius = defaultBorderRadius,
  });

  static const defaultRadius = 12.0;

  static const defaultBorderRadius = BorderRadius.only(
    topLeft: Radius.elliptical(defaultRadius * 2, defaultRadius * 3),
    topRight: Radius.circular(defaultRadius * 2),
    bottomRight: Radius.circular(defaultRadius * 3),
    bottomLeft: Radius.elliptical(defaultRadius * 3, defaultRadius * 5),
  );
  final num radius;

  final BorderRadius borderRadius;

  BorderRadius get invertedBorderRadius => BorderRadius.only(
        topLeft: defaultBorderRadius.topRight,
        topRight: defaultBorderRadius.topLeft,
        bottomRight: defaultBorderRadius.bottomLeft,
        bottomLeft: defaultBorderRadius.bottomRight,
      );
}

class RectClipperView extends ClipperView<RectClipperOptions> {
  const RectClipperView({
    super.key,
    RectClipperOptions? options,
    required super.child,
  }) : super(options: options ?? const RectClipperOptions());

  @override
  ClipRectViewState createState() => ClipRectViewState();
}

class ClipRectViewState extends ClipperViewState {
  @override
  RectClipperView get widget => super.widget as RectClipperView;

  @override
  Widget get clipped => ClipRRect(
        borderRadius: widget.o.inverse
            ? widget.o.invertedBorderRadius
            : widget.o.borderRadius,
        child: childForClip,
      );
}
