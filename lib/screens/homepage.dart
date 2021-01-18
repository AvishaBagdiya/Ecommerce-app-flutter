import 'package:ecommerce_flutter/widgets/home_body.dart';
import 'package:flutter/material.dart';
import '../screens/cart_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Shop!!..Shop!!..'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart,size: 30,), onPressed: ()=>
          Navigator.of(context).pushNamed(CartScreen.routeName))
        ],
      ),
      body:HomeBody()
    );
  }
}
