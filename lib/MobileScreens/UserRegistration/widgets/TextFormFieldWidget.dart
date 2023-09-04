import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class TextFormFieldWidget extends StatelessWidget{

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final int? maxLines;

  TextFormFieldWidget({
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.maxLines,

  });

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Comforta',
            color: Color(0x99000000),
            fontSize: 15.0,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC5C5C5)),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red), // Set the border color here
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC5C5C5)),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
