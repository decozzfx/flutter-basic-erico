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
          title: const Text('Latihan Stack and Align'),
        ),
        body: Stack(
          children: <Widget>[
            // background
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // listView
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
            // button

            Align(
              alignment: const Alignment(0.8, 0.9),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: const Text(
                  'Button Tambah',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
