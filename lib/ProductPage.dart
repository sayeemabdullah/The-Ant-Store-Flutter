import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        return Card(
          child: ListTile(
            onTap: (){},
            title: Text(productsName[index]),
            subtitle: Text(productsAbout[index]),
          ),
        );
      },
    ),
    );
  }
}