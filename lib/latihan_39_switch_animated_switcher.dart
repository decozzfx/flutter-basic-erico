import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isSwitched = false;

  late Widget myWidget;

  Widget defaultWidget = Container(
    key: UniqueKey(),
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.red,
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    ),
  );

  _MainAppState() {
    myWidget = defaultWidget;
  }

  void _changeSwitch(bool value) {
    setState(() {
      isSwitched = value;
      if (isSwitched) {
        myWidget = Container(
          key: UniqueKey(),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
        );
      } else {
        myWidget = defaultWidget;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switch & AnimatedSwitcher'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                child: myWidget,
              ),
              Switch(
                activeColor: Colors.green,
                activeTrackColor: Colors.lightGreenAccent,
                inactiveThumbColor: Colors.green[200],
                value: isSwitched,
                onChanged: _changeSwitch,
              )
            ],
          ),
        ),
      ),
    );
  }
}
