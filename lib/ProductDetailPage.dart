import 'package:flutter/material.dart';
import 'package:flutter_basic_task/product.dart';

//import 'package:flutter_basic_task/product.dart';

class ProductDetailPage  extends StatelessWidget {

  final Product products;
  ProductDetailPage({this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          title: const Text('Product Details'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ), onPressed: null)
          ],
    ),
    body: Image.asset('assets/${products.picture}'),
    );
  }
}