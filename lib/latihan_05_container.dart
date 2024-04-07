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
          title: const Text('Latihan Container',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.pink],
            ),
          )),
        ),
      ),
    );
  }
}
