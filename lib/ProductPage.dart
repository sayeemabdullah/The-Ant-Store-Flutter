import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'product.dart';
import 'package:flutter_basic_task/ProductDetailPage.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  
  List<Product> products = [
    Product(name: 'Carpenter Ant' , about: 'Carpenter ants are large ants indigenous to many forested parts of the world.' , price:'Tk 280' ,picture: 'blackant.jpg' , description: 'Carpenter ants (Camponotus spp.) are large (0.3 to 1.0 in or 0.76 to 2.54 cm) ants indigenous to many forested parts of the world.They build nests inside wood consisting of galleries chewed out with their mandibles, preferably in dead, damp wood. However, unlike termites, they do not consume wood,discarding a material that resembles sawdust. Sometimes, carpenter ants hollow out sections of trees. They also commonly infest wooden buildings and structures, and are a widespread nuisance and major cause of structural damage. Nevertheless, their ability to excavate wood helps in forest decomposition. One of the most familiar species associated with human habitation in the United States is the black carpenter ant (Camponotus pennsylvanicus). The genus includes over 1,000 species.They also farm aphids. In the farming, the ants protect the aphids while they excrete a sugary fluid called honeydew, which the ants get by stroking the aphids with their antennae.'),
    Product(name: 'Fire Ant' , about: 'Fire ants are several species of ants in the genus Solenopsis.' , price:'Tk 550', picture: 'fireant.jpg' , description: 'Fire ants are several species of ants in the genus Solenopsis. They are, however, only a minority in the genus, which includes over 200 species of Solenopsis worldwide. Solenopsis are stinging ants, and most of their common names reflect this, for example, ginger ants and tropical fire ants. Many species also are called red ants because of their light brown color, though species of ants in many other genera are similarly named for similar reasons. Examples include Myrmica rubra and Pogonomyrmex barbatus.None of these names apply in all countries nor to all species of Solenopsis, nor only to Solenopsis species; for example the colloquial names for several species of weaver ants in the genus Oecophylla in Southeast Asia include "fire ants" because of their red color and painful sting; the two genera, however, are not closely related. Also, Wasmannia auropunctata is commonly called the little fire ant.'),
    Product(name: 'Bullet Ant' , about: 'Paraponera clavata is a species of ant, commonly known as the bullet ant, named for its extremely potent sting.' , price:'Tk 1200' , picture: 'bulletant.jpg' , description: 'Paraponera is distributed throughout Central and South America, commonly found in the wet neotropic ecozone. These ants are found in Honduras, El Salvador, Nicaragua and Costa Rica from the north, and in Venezuela, Colombia, Ecuador, Peru, Bolivia and Brazil from the south.Colonies are found in lowland areas, at elevations ranging from sea level to 750 m (2,460 ft). However, specimens have been collected at elevations of 1,500 m (4,920 ft) in Parque La Amistad.')
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
      itemCount: products.length, 
      itemBuilder: (context, index) {
        return Container(
          height: 132.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10.0),
            child: Card(
               elevation:5,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  ),
                  
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ProductDetailPage();
                    }));
                },
                leading: Image.asset('assets/${products[index].picture}',
                height: 200, width: 80, fit: BoxFit.fitWidth),
                title: Text(products[index].name),
                subtitle: Text(products[index].price +"\n"+products[index].about),
              ),
            ),
          ),
        );
      },
    ),
    );
  }
}