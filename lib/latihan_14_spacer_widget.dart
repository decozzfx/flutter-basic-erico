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
          backgroundColor: Colors.blue,
          title: const Text('Spacer Widget',
              style: TextStyle(color: Colors.white)),
        ),
        body: Center(
            child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            const Spacer(flex: 1),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            const Spacer(flex: 2),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        )),
      ),
    );
  }
}
