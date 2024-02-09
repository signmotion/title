import 'package:flutter/material.dart';
import 'package:title_widget/title_widget.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  Widget get background =>
      RectClipperView(child: Image.asset('assets/images/1.webp'));

  Widget get title => const RectGlassTitle(
        'Forgotten Dreams',
        effectOptions: GlassEffectOptions(blur: (12, 2)),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [background, title],
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      );
}
