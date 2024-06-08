import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  TabBar myTabBar = const TabBar(
    // indicatorColor: Colors.red,
    indicator: BoxDecoration(
        color: Colors.blue,
        border: Border(top: BorderSide(color: Colors.purple, width: 5))),
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
  );

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
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(
                    color: Colors.amberAccent,
                    child: myTabBar,
                  )),
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
