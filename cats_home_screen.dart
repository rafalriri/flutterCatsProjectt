import 'package:flutter/material.dart';
import 'package:flutter_application_1_cats/main.dart';
import 'package:flutter_application_1_cats/widgets/cat_card.dart';



class CatsHomeScreen extends StatelessWidget {
const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cats'),
        backgroundColor: Colors.blueGrey,
        actions: [IconButton(onPressed:  () {}, icon: Icon(Icons.favorite, color: Colors.white,))],
      ),
      body: GridView.builder(
        gridDelegate: 
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemCount: cats.length,
        itemBuilder: (context, index){
          return CatCard(cat: cats[index]);
        },

        ),
    );
  }
}

