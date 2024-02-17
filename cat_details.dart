import 'package:flutter/material.dart';
import 'package:flutter_application_1_cats/model/cat.dart';
/// This widget should receive a cat and show all cat details
class CatDetailsWidget extends StatefulWidget {
  final Cat cat;
  const CatDetailsWidget({super.key,required this.cat});

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {
  bool isNameColored = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
     children: [
      //Cat Image
      Image.network(widget.cat.imageLink),
      //Cat Name
      Text(
        widget.cat.name,
        style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: isNameColored ? Colors.deepPurple: Colors.black),
      ),
      //Cat Info
      Text('Origin: ${widget.cat.origin}'),
      Text('MaxWeight:${widget.cat.maxWeight} '),
      Text('MinWeight: ${widget.cat.minWeight}'),
      Text('Length: ${widget.cat.length}'),
      ElevatedButton(onPressed:  () {
        setState(() {
          isNameColored =!isNameColored;
        });
      },
       
       child: Text('Change Name Color')),
     
     ], 
    );
  }
}