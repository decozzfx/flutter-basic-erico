import 'package:flutter/material.dart';
import 'package:flutter_basic/class/color_bloc_package.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// WARN TUTORIAL 45 IS DEPRECATED

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(create: (context) => ColorBloc(), child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              bloc.mapEventToState(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              bloc.mapEventToState(ColorEvent.to_light_blue);
            },
            backgroundColor: Colors.lightBlue,
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Latihan 45 Bloc Package'),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: 100,
        height: 100,
        color: Colors.amber,
      )),
    );
  }
}
