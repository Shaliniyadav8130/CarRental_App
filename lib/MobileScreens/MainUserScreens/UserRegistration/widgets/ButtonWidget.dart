import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final String iconImagePath;

  ButtonWidget({
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xffC5C5C5),
    required this.iconImagePath,
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
            borderRadius: BorderRadius.circular(25.0),
          ),
          side: BorderSide(
            color: Color(0xffC5C5C5),
            width: 1, // You can adjust the border width as needed
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconImagePath,
              //width: 24, // Adjust the icon width as needed
              //height: 24, // Adjust the icon height as needed
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: Color(0x66000000),
                fontFamily: 'Comforta',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
