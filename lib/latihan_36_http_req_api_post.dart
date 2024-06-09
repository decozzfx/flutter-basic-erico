import 'package:flutter/material.dart';
import 'package:flutter_basic/model/post_result_model.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  PostResult? postResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP Request API Post'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(postResult != null
                    ? postResult!.id +
                        ' | ' +
                        postResult!.name +
                        ' | ' +
                        postResult!.job +
                        ' | ' +
                        postResult!.createdAt
                    : 'Tidak ada data'),
                ElevatedButton(
                    onPressed: () {
                      PostResult.connectToAPI('Dodi', 'Programmer').then(
                          (value) => {postResult = value, setState(() {})});
                    },
                    child: Text('POST')),
              ]),
        ),
      ),
    );
  }
}
