import 'package:flutter/material.dart';

class MealImage extends StatefulWidget {
  final document;
  MealImage(this.document);
  @override
  _MealImageState createState() => _MealImageState();
}

class _MealImageState extends State<MealImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.network(
        widget.document['image_url'],
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    ]);
  }
}
