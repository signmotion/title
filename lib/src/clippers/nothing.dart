part of '../../title.dart';

class NothingClipper extends Clipper<ClipperOptions> {
  const NothingClipper(super.options);

  @override
  Widget make(Widget w, Title title) => w;
}
