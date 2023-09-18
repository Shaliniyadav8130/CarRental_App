import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacilityWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  FacilityWidget({
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
          width: 50.0, // Adjust width as needed
          height: 50.0, // Adjust height as needed
        ),
        SizedBox(height: 7.0), // Add spacing between image and text
        Text(
          text,
          style: TextStyle(fontSize: 13.0),
        ),
      ],
    );
  }
}
