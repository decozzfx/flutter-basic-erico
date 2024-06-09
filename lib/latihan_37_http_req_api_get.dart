import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic/model/user_model.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  User? user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP Request API Get'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: Image.network(user != null
                            ? user!.avatar!
                            : 'https://www.w3schools.com/w3css/img_avatar3.png')
                        .image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(user != null
                    ? user!.id! +
                        ' | ' +
                        user!.first_name! +
                        ' | ' +
                        user!.last_name!
                    : 'Tidak ada data'),
                ElevatedButton(
                    onPressed: () {
                      User.connectToAPI('1')
                          .then((value) => {user = value, setState(() {})});
                    },
                    child: Text('GET')),
              ]),
        ),
      ),
    );
  }
}
