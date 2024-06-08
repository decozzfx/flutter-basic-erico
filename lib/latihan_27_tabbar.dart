import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text(
                'Contoh tab bar',
                style: TextStyle(color: Colors.white),
              ),
              bottom: const TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.comment,
                      color: Colors.white,
                    ),
                    child: Text(
                      'Komentar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.newspaper,
                      color: Colors.white,
                    ),
                    child: Text(
                      'News',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    child: Text(
                      'Notif',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.computer,
                      color: Colors.white,
                    ),
                    child: Text(
                      'Komputer',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Center(
                  child: Text('Komentar'),
                ),
                Center(
                  child: Text('News'),
                ),
                Center(
                  child: Text('Notif'),
                ),
                Center(
                  child: Text('Komputer'),
                ),
              ],
            )),
      ),
    );
  }
}
