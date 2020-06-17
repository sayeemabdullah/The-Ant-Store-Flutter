import 'package:flutter/material.dart';
import 'package:flutter_basic_task/product.dart';
//import 'package:flutter_basic_task/product.dart';

class ProductDetailPage  extends StatelessWidget {

  final Product products;
  ProductDetailPage({this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: BackButton(
                color: Colors.red,
                ),
              title: Text('Product Details',
              style: TextStyle(color: Colors.red),),
              backgroundColor: Colors.white,
              expandedHeight: 350.0,
              actions: <Widget>[
                IconButton(icon: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ), onPressed: null)
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(products.name,
                style: TextStyle(color: Colors.red),),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset('assets/${products.picture}',
                    fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}