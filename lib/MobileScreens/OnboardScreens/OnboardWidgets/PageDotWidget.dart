import 'package:flutter/material.dart';

class PageDotWidget extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  PageDotWidget({
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 20,
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2), // Background color for the main container
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: color1,
              shape: BoxShape.circle, // Make the container circular
            ),
          ),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: color2,
              shape: BoxShape.circle, // Make the container circular
            ),
          ),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: color3,
              shape: BoxShape.circle, // Make the container circular
            ),
          ),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: color4,
              shape: BoxShape.circle, // Make the container circular
            ),
          ),
        ],
      ),
    );
  }
}