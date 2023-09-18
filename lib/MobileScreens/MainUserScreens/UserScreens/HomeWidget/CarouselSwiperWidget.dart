import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomPageIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue, // Active indicator color
          ),
        ),
        Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey, // Inactive indicator color
          ),
        ),
        Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey, // Inactive indicator color
          ),
        ),
      ],
    );
  }
}