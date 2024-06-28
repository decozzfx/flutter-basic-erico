import 'package:flutter/material.dart';
import 'package:flutter_basic/class/cart.dart';
import 'package:flutter_basic/class/money.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Cart>(create: (context) => Cart()),
          ChangeNotifierProvider<Money>(create: (context) => Money()),
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (ctx, money, _) => Consumer<Cart>(
              builder: (ctx, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (money.balance >= 500) {
                    cart.qty += 1;
                    money.balance -= 500;
                  }
                },
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text(
              'Multi Provider',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Balance'),
                    Container(
                      height: 30,
                      width: 150,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.purple[100],
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer(
                          builder: (context, Money money, _) => Text(
                            money.balance.toString(),
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 30,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (ctx, cart, _) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Apple @500 x ' + cart.qty.toString(),
                              style: TextStyle(
                                  color: Colors.purpleAccent[400],
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              (500 * cart.qty).toString(),
                              style: TextStyle(
                                  color: Colors.purpleAccent[400],
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
