part of '../../title_widget.dart';

/// Title without clipping.
class NothingClipper extends Clipper<ClipperOptions> {
  const NothingClipper(super.options);

  @override
  Widget make(Widget w, Title title) => w;
}
