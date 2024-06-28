import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int counter = 0;
  bool isBlack = false;
  bool isStop = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Timer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counter.toString(),
                style: TextStyle(
                    fontSize: 50,
                    color: (isBlack) ? Colors.black : Colors.red,
                    fontWeight: FontWeight.w700),
              ),
              ElevatedButton(
                onPressed: () {
                  Timer(Duration(seconds: 2), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text('Timer 2 seconds'),
              ),
              ElevatedButton(
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text('Immediately'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                    isStop = false;
                  });
                  Timer.periodic(Duration(seconds: 1), (timer) {
                    if (isStop) {
                      timer.cancel();
                    }
                    setState(() {
                      counter++;
                    });
                  });
                },
                child: Text('Start Timer'),
              ),
              ElevatedButton(
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isStop = true;
                    });
                  });
                },
                child: Text('Stop Timer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
