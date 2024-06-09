import 'package:flutter/material.dart';
import 'package:flutter_basic/class/application_color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider<ApplicationColor>(
      create: (context) => ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          title: Consumer<ApplicationColor>(
            builder: (ctx, appColor, _) => Text(
              'Provider State Management',
              style: TextStyle(color: appColor.color),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (ctx, appColor, _) => AnimatedContainer(
                  margin: EdgeInsets.all(5),
                  duration: Duration(milliseconds: 500),
                  width: 100,
                  height: 100,
                  color: appColor.color,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text('AB'),
                  ),
                  Consumer<ApplicationColor>(
                      builder: (ctx, appColor, _) => Switch(
                          value: appColor.isLightBlue,
                          inactiveThumbColor: appColor.color,
                          activeColor: appColor.color,
                          onChanged: (val) {
                            appColor.isLightBlue = val;
                          })),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text('LB'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
