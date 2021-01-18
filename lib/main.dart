import 'package:ecommerce_flutter/models/cart.dart';
import 'package:ecommerce_flutter/models/orders.dart';
import 'package:ecommerce_flutter/models/products.dart';
import 'package:ecommerce_flutter/screens/pdt_detail_screen.dart';
import 'package:flutter/material.dart';
import './screens/homepage.dart';
import 'package:provider/provider.dart';
import './models/cart.dart';
import './screens/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop!!..Shop!!..',
        theme: ThemeData(
          primaryColor: Colors.purpleAccent,
          accentColor: Colors.blueAccent,
        ),
        home: HomePage(),
        routes: {
          DetailPage.routeName: (ctx)=>DetailPage(),
          CartScreen.routeName: (ctx)=>CartScreen(),
        },
      ),
    );
  }
}
