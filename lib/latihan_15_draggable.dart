import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color color3 = Colors.grey;
  Color targetColor = Colors.grey;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Draggable'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color3,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: const StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: const StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color3,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: const StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: const StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAcceptWithDetails: (value) => true,
              onAcceptWithDetails: (value) {
                isAccepted = true;
                targetColor = value.data;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: const StadiumBorder(),
                        ),
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: const StadiumBorder(),
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
