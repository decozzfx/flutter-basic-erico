import 'package:flutter/material.dart';
import 'colorful_button.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Button',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Button'),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
            ColorfulButton(Colors.amber, Colors.red, Icons.comment),
            ColorfulButton(Colors.green, Colors.purple, Icons.computer),
            ColorfulButton(Colors.blue, Colors.yellow, Icons.contact_phone),
          ],
        )),
      ),
    );
  }
}
