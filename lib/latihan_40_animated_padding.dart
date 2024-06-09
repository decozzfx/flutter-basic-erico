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
  double _padding = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Padding'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: AnimatedPadding(
                            duration: Duration(seconds: 1),
                            padding: EdgeInsets.all(_padding),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _padding = _padding == 5 ? 20 : 5;
                                });
                              },
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: AnimatedPadding(
                            duration: Duration(seconds: 1),
                            padding: EdgeInsets.all(_padding),
                            child: Container(
                              color: Colors.green,
                            ),
                          ))
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: AnimatedPadding(
                            duration: Duration(seconds: 1),
                            padding: EdgeInsets.all(_padding),
                            child: Container(
                              color: Colors.blue,
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: AnimatedPadding(
                            duration: Duration(seconds: 1),
                            padding: EdgeInsets.all(_padding),
                            child: Container(
                              color: Colors.yellow,
                            ),
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
