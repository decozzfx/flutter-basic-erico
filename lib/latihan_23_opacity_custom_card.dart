import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Custom Card with Opacity',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff8c062f),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xfffe5788), Color(0xfff56d5d)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  child: Stack(
                    children: [
                      Opacity(
                          opacity: 0.5,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/1939485/pexels-photo-1939485.jpeg'),
                                      fit: BoxFit.cover)))),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20,
                            50 + MediaQuery.of(context).size.height * 0.35,
                            20,
                            20),
                        child: Center(
                          child: Column(
                            children: [
                              const Text(
                                "Beautiful Sunset at Paddy Field",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xfff56d5d), fontSize: 25),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Posted on ",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Text(
                                      "June 18, 2021",
                                      style: TextStyle(
                                          color: Color(0xfff56d5d),
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(flex: 10),
                                    Icon(
                                      Icons.thumb_up,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                    Spacer(flex: 1),
                                    Text(
                                      " 4341",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Spacer(flex: 5),
                                    Icon(
                                      Icons.message,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                    Spacer(flex: 1),
                                    Text(
                                      " 2341",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Spacer(flex: 10),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
