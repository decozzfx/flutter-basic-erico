import 'package:flutter/material.dart';
import 'package:flutter_basic/latihan_16_multipage/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const MainPage();
            }));
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
