import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Media Query'),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainers(),
              )
            : Row(
                children: generateContainers(),
              ));
  }
}

List<Widget> generateContainers() {
  return [
    Container(
      color: Colors.red,
      height: 100,
      width: 100,
    ),
    Container(
      color: Colors.green,
      height: 100,
      width: 100,
    ),
    Container(
      color: Colors.blue,
      height: 100,
      width: 100,
    ),
  ];
}
