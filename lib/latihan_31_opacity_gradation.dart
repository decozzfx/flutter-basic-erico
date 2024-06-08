import 'package:flutter/material.dart';

void Main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan 31 - Opacity Gradiation'),
        ),
        body: Center(
          child: ShaderMask(
            blendMode: BlendMode.dstIn,
            shaderCallback: (rectangle) {
              return const LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(
                  Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            },
            child: const Image(
                width: 300,
                image: NetworkImage(
                    'https://www.petanikode.com/img/flutter/flutter.png')),
          ),
        ),
      ),
    );
  }
}
