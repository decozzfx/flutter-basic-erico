import 'package:flutter/material.dart';
import 'package:flutter_basic/class/user_profile.dart';

void main() {
  runApp(MainApp());
}

// Example of Comment

class MainApp extends StatelessWidget {
  MainApp({super.key});

  // hover over the profile variable to see the documentation
  final UserProfile profile = UserProfile(
      name: 'John Doe',
      role: 'Software Engineer',
      photo:
          'https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text(
              'Doc Comment',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(child: profile)),
    );
  }
}
