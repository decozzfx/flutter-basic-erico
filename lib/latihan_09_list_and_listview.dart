// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  List<Widget> widgets = [];

  tambahHandler() {
    setState(() {
      widgets.add(Text(
        'Data ke-${widgets.length + 1}',
        style: TextStyle(fontSize: 35),
      ));
    });
  }

  hapusHandler() {
    if (widgets.isNotEmpty) {
      setState(() {
        widgets.removeLast();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan listView'),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: tambahHandler,
                  child: Text('Tambah Data'),
                ),
                TextButton(onPressed: hapusHandler, child: Text('Hapus Data')),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
