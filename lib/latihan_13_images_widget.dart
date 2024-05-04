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
          title: const Text('Latihan Image Widget',
              style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(5),
                child: const Image(
                  image: NetworkImage(
                      'https://www.petanikode.com/img/flutter/flutter.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.transparent,
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(5),
                child: const Image(
                  image: AssetImage('assets/images/decoz-logo-gray.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
