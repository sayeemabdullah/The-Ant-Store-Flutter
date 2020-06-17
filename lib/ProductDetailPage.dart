import 'package:flutter/material.dart';
import 'package:flutter_basic_task/product.dart';

//import 'package:flutter_basic_task/product.dart';

class ProductDetailPage  extends StatelessWidget {

Container moreProducts(String imageVal){
    return Container(
                width: 160.0,
                child: Card(
                  //child:Wrap(
                    //children: <Widget>[
                    child:
                      Image.network(imageVal,
                      fit: BoxFit.cover),
                    //],
                  //),
                ),
              );
  }

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
        SizedBox(height: 20.0,),
        Text("You may also like:",
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              moreProducts("https://images.newscientist.com/wp-content/uploads/2019/10/16151942/cataglyphisbombycinasoldier1uniulmdouzfotohwolf.jpg"),
              moreProducts("https://images.unsplash.com/flagged/photo-1575827784611-a7b981a69ed9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
              moreProducts("https://images.unsplash.com/photo-1565860045270-a41178237e0a?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
              moreProducts("https://images.unsplash.com/photo-1562202880-1f9f814222ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80")
            ],
          ),
        ),
      ],
    ),
    ),
        );
  }
}