import 'package:flutter/material.dart';
import 'package:flutter_application_1_cats/Screens/cats_details_Screen.dart';
import 'package:flutter_application_1_cats/model/cat.dart';

class CatCard extends StatelessWidget {
  final Cat cat;
  
 
  const CatCard({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context)  {
          return CatDetailsScreen(cat: cat);

      }));  

      },
      child: Card(
        child: Column(
        children: [
          // Cat Image
           Expanded(
              child: Image.network(
              width:double.infinity,
              fit: BoxFit.fitWidth,
              cat.imageLink),
              ),
          // Cat name
          Padding(
            padding: const EdgeInsets.all(8.0),
          child: Text(
            cat.name,
            textAlign:TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple), 
               )
          )
          
        ],
      )),
    );
  }
}