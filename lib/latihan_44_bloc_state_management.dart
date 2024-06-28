import 'package:flutter/material.dart';
import 'package:flutter_basic/class/color_bloc.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber,
              child: Icon(Icons.add, color: Colors.white),
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_light_blue);
              },
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.remove, color: Colors.white),
            ),
          ],
        ),
        appBar: AppBar(
          title: Text('State Management'),
        ),
        body: Center(
          child: StreamBuilder(
            stream: bloc.stateStream,
            builder: (context, snapshot) => AnimatedContainer(
              width: 100,
              height: 100,
              color: snapshot.data ?? Colors.amber,
              duration: Duration(milliseconds: 500),
            ),
          ),
        ),
      ),
    );
  }
}
