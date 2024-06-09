import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Clip Path'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Image(
                    image: NetworkImage(
                        'https://img.freepik.com/free-psd/psd-phone-template-with-blank-frame-design_1409-4126.jpg?w=826&t=st=1717816964~exp=1717817564~hmac=54acf19bf130491e77c1dced0e98d42d92ac944513078a1b0924c43602df528f'),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.5, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
