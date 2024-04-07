// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan TextStyle'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'ini adalah Text!',
                style: TextStyle(fontFamily: 'MadimiOne'),
              ),
              Text(
                'ini adalah Text2!',
                style: TextStyle(
                    fontFamily: 'MadimiOne',
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationThickness: 5,
                    decorationStyle: TextDecorationStyle.dashed),
              )
            ],
          ),
        ),
      ),
    );
  }
}
