import 'package:flutter/material.dart';

class RenewButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  RenewButtonWidget({
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius = 16.0, // Default border radius of 25.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          // side: BorderSide(
          //   color: Color(0xffC5C5C5),
          //   width: 1, // You can adjust the border width as needed
          // ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: textColor,
              fontFamily: 'Comforta',
            ),
          ),
        ),
      ),
    );
  }
}
