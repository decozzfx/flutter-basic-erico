import 'package:flutter/material.dart';
import 'package:flutter_basic/model/users_model.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String data = 'Tidak Ada Data';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP Request API Get List'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(data,
                    style: TextStyle(
                      fontSize: 20,
                    )),
                ElevatedButton(
                    onPressed: () {
                      Users.getUsers('1').then((users) {
                        data = '';
                        for (var i = 0; i < users.length; i++) {
                          data = data +
                              '[ ' +
                              (users[i].name ?? 'tidak muncul') +
                              ' ] ';
                        }
                        setState(() {});
                      });
                    },
                    child: Text('GET USERS')),
              ]),
        ),
      ),
    );
  }
}
