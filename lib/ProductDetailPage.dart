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
    body:SingleChildScrollView(
    child:
    new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Image.asset('assets/${products.picture}'),
        SizedBox(height:20.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star_half)
            ],
          ),
        Text(products.name,
          style:TextStyle(
            fontSize: 30.0,
          ),
          ),
        Text(products.price,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.deepOrange
          ),
          ),
        //SizedBox(height: 10.0,),
        SizedBox(height:20.0),
        Text(products.description,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    ),
    ),
        );
  }
}