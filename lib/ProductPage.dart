import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_basic_task/ProductDetailPage.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  
  List<String> productsName = [
    'Carpenter Ant' , 'Fire Ant' , 'Bullet Ant'
  ];

  List<String>productsAbout = [
    'Carpenter ants are large ants indigenous to many forested parts of the world.' , 'Fire ants are several species of ants in the genus Solenopsis.' , 'Paraponera clavata is a species of ant, commonly known as the bullet ant, named for its extremely potent sting.'
  ];

  List<String> productsPicture = [
    'blackant.jpg' , 'fireant.jpg' , 'bulletant.jpg'
  ];
  
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
    body: ListView.builder(
      itemCount: productsName.length, 
      itemBuilder: (context, index) {
        return Container(
          height: 120.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10.0),
            child: Card(
               elevation:5,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  ),
                  
              child: ListTile(
                onTap: (){},
                leading: Image.asset('assets/${productsPicture[index]}',
                height: 200, width: 80, fit: BoxFit.fitWidth),
                title: Text(productsName[index]),
                subtitle: Text(productsAbout[index]),
              ),
            ),
          ),
        );
      },
    ),
    );
  }
}