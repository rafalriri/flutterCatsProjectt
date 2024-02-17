import 'package:flutter/material.dart';
import 'package:flutter_application_1_cats/model/cat.dart';
import 'package:flutter_application_1_cats/widgets/cat_details.dart';

class CatDetailsScreen extends StatelessWidget {
  final CatModel cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name!),
        backgroundColor: Colors.deepPurple,
        ),
      body: CatDetailsWidget(
        cat: cat,
        ),
    );
  }
}

