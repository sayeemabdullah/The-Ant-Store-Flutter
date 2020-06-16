import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Ant Online Store'),
          actions: <Widget>[
            IconButton(icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ), onPressed: null)
          ],
    ),
    );
  }
}