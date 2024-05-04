import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Flexible Layout'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
