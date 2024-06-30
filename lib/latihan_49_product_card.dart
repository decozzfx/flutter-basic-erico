import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const Color firstColor = Color(0xffF44336);
const Color secondColor = Color(0xff4CAF50);

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Product Card',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          backgroundColor: firstColor,
        ),
        body: ChangeNotifierProvider<ProductState>(
          create: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (ctx, productState, _) => ProductCard(
                  imageUrl:
                      'https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg',
                  name: 'Buah 1 Mix 1 Kg',
                  price: 'Rp. 25.000',
                  onAddCartTap: () {},
                  quantity: productState.quantity,
                  onIncTap: () {
                    productState.quantity++;
                  },
                  onDecTap: () {
                    productState.quantity--;
                  },
                  notif: productState.quantity > 5 ? 'Diskon 10%' : '',
                  stock: productState.stock,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final int quantity;
  final Function onAddCartTap;
  final Function onIncTap;
  final Function onDecTap;
  final String? notif;
  final int stock;

  final TextStyle textStyle = TextStyle(
      fontFamily: 'Pacifico',
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey[800]);

  ProductCard(
      {this.imageUrl = '',
      this.name = '',
      this.price = '',
      required this.onAddCartTap,
      this.quantity = 0,
      required this.onIncTap,
      required this.onDecTap,
      this.notif,
      this.stock = 0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(left: 10, right: 10),
          duration: Duration(milliseconds: 200),
          width: 130,
          height: notif != '' ? 285 : 250,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 3,
                  offset: Offset(1, 1),
                  color: Colors.black.withOpacity(0.3))
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            color: secondColor,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              (notif ?? ''),
              style: textStyle.copyWith(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 260,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                    offset: Offset(1, 1))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(imageUrl), fit: BoxFit.cover),
                      )),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      name,
                      style: textStyle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    child: Text(
                      price,
                      style:
                          textStyle.copyWith(fontSize: 12, color: Colors.red),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.stadium_outlined,
                                size: 16,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${stock - quantity}/${stock.toString()}',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          CustomProgress(
                            totalValue: stock,
                            value: stock - quantity,
                            width: 140,
                          )
                        ],
                      )),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 140,
                    height: 30,
                    decoration:
                        BoxDecoration(border: Border.all(color: firstColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => onIncTap(),
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          quantity.toString(),
                          style: textStyle,
                        ),
                        GestureDetector(
                          onTap: () => onDecTap(),
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: Icon(
                              Icons.remove,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 140,
                      child: ElevatedButton(
                          onPressed: () => onAddCartTap(),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return firstColor.withOpacity(0.5);
                                  }
                                  return firstColor;
                                },
                              ),
                              shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16),
                                      )))),
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                            size: 18,
                          )))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomProgress extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;

  CustomProgress(
      {required this.width, required this.totalValue, required this.value});

  @override
  Widget build(BuildContext context) {
    var ratio = value / totalValue;
    print(ratio);
    print(value);
    double widthCalc() {
      if (ratio > 0.0) return width * ratio;
      return 0.0;
    }

    return Stack(
      children: [
        Container(
          width: width,
          height: 6,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
        ),
        Material(
          borderRadius: BorderRadius.circular(5),
          child: AnimatedContainer(
            height: 6,
            width: widthCalc(),
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
                color: ratio == 0.0
                    ? Colors.lightGreen
                    : ratio <= 0.3
                        ? Colors.red
                        : ratio < 0.6
                            ? Colors.amber[400]
                            : Colors.lightGreen,
                borderRadius: BorderRadius.circular(5)),
          ),
        )
      ],
    );
  }
}

class ProductState with ChangeNotifier {
  int _quantity = 0;
  int _stock = 10;

  int get quantity => _quantity;
  int get stock => _stock;
  set quantity(int newValue) {
    if (newValue >= 0 && newValue <= stock) {
      _quantity = newValue;
      notifyListeners();
    }
  }

  set stock(int newValue) {
    _stock = newValue;
    notifyListeners();
  }
}
