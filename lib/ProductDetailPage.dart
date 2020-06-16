import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('The Ant Store'),
          backgroundColor: Colors.red,
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