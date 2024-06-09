import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController controller = TextEditingController(text: 'No Name');
  bool isOn = false;

  void saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', controller.text);
    await prefs.setBool('isOn', isOn);
  }

  Future<Map<dynamic, dynamic>> loadData() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'name': prefs.getString('name') ?? 'No Name',
      'isOn': prefs.getBool('isOn') ?? false
    };
  }

  Future<bool> getIsOn() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isOn') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shared Preference'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                value: isOn,
                onChanged: (value) {
                  setState(() {
                    isOn = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: saveData,
                child: Text('Save'),
              ),
              ElevatedButton(
                onPressed: () {
                  loadData().then((value) => setState(() {
                        controller.text = value['name'];
                        isOn = value['isOn'];
                      }));
                },
                child: Text('Load'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
