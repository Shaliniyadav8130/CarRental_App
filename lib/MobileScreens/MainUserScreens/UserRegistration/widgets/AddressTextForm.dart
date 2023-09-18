import 'package:flutter/material.dart';

class AddressTextFormWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final int? maxLines;
  final IconData? prefixIcon;
  final Color? borderColor;

  AddressTextFormWidget({
    required this.controller,
    this.hintText,
    this.maxLines,
    this.prefixIcon,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBorderColor = borderColor ?? Colors.transparent; // Use a default color if borderColor is null

    // Calculate the contentPadding based on the presence of a prefixIcon
    final contentPadding = EdgeInsets.symmetric(
      vertical: 8.0,
      horizontal: prefixIcon != null ? 8.0 : 16.0, // Reduce horizontal padding when there's no prefixIcon
    );

    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: Color(0x88000000)) : null, // Prefix icon, only if provided
          hintStyle: TextStyle(
            fontFamily: 'Comforta',
            color: Color(0x66000000),
            fontSize: 15.0,
          ),
          contentPadding: contentPadding, // Use the calculated contentPadding
          border: OutlineInputBorder(
            borderSide: BorderSide(color: effectiveBorderColor),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red), // Set the border color here
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: effectiveBorderColor),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
