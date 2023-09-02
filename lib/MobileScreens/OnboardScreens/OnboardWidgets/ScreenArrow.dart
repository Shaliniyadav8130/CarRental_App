import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  CircularButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffEF3D49), // Customize the button color as needed
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white, // Customize the arrow color as needed
          ),
        ),
      ),
    );
  }
}