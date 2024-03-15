import 'package:flutter/material.dart';
import 'package:title_widget/title_widget.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  Widget get background =>
      RectClipperView(child: Image.asset('assets/images/1.webp'));

  Widget get title => RectGlassTitle(
        text: 'Forgotten Dreams',
        effectOptions: const GlassEffectOptions(blur: (12, 2)),
        textColor: Colors.white,
      );

  Widget get icon => Padding(
        padding: const EdgeInsets.only(top: 240),
        child: RectGlassTitle(
          widget: const Icon(Icons.hiking, color: Colors.white),
          effectOptions: const GlassEffectOptions(blur: (12, 2)),
        ),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [background, icon, title],
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      );
}
