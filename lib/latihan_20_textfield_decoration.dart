import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MainApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Latihan TextField'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  icon: Icon(Icons.adb),
                  // prefix: Container( // prefix cant be used with prefixText and prefixStyle  at the same time
                  //   width: 5,
                  //   height: 5,
                  //   color: Colors.red,
                  // ),
                  prefixIcon: Icon(Icons.person),
                  prefixText: "Nama: ",
                  prefixStyle: const TextStyle(color: Colors.blue),
                  // suffix: Container( // suffix cant be used with prefixText and prefixStyle  at the same time
                  //   width: 5,
                  //   height: 5,
                  //   color: Colors.red,
                  // ),
                  suffixText: 'Suffix Text',
                  labelText: 'Nama Lengkap',
                  hintText: "Nama Lengkap...",
                  hintStyle: const TextStyle(fontSize: 12),
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(controller.text)
          ],
        ),
      ),
    ));
  }
}
