import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Font Feature'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'hello, world!',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'hello, world! (Small Caps)',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontFeatures: [
                      FontFeature.enable('smcp'),
                    ],
                  ),
                ),
                Text(
                  'hello, world! 9 1/2 (Small Caps & Frac)',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontFeatures: [
                      FontFeature.enable('frac'),
                    ],
                  ),
                ),
                Text(
                  'hello, world! 19 (oldstyle)',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontFeatures: [
                      FontFeature.oldstyleFigures(),
                    ],
                  ),
                ),
                Text(
                  'hello, world! 19 (Default)',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Pacifico',
                    fontFeatures: [],
                  ),
                ),
                Text(
                  'hello, world! 19 (style set 1)',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Pacifico',
                    fontFeatures: [
                      FontFeature.stylisticSet(1),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
