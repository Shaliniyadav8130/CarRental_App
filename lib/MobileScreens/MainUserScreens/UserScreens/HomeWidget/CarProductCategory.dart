import 'package:flutter/material.dart';

class CarProductCategory extends StatelessWidget {
  final String imagePath;
  final String text;

  CarProductCategory({
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          imagePath,
          width: 120.0,
          height: 100.0,
        ), // Adjust width and height as needed
        SizedBox(height: 16.0), // Add spacing between image and text
        Text(
          text,
          style: TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }
}
