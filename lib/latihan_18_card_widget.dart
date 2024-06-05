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
      backgroundColor: Colors.green,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCard(Icons.account_box, 'Account Box'),
            buildCard(Icons.adb, 'Android Debug Bridge'),
          ],
        ),
      ),
    ));
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.green,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
