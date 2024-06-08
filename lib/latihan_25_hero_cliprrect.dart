import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SecondPage();
          }));
        },
        child: const Hero(
          tag: 'profile',
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://inikpop.com/wp-content/uploads/2018/12/jennie.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: const Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Center(
        child: Hero(
          tag: 'profile',
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://inikpop.com/wp-content/uploads/2018/12/jennie.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
