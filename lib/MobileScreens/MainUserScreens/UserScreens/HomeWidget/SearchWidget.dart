import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onSubmitted;

  SearchBarWidget({required this.controller, this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height:40,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "Search",
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
            borderSide: BorderSide(color: Color(0x66000000)),
            borderRadius: BorderRadius.circular(25.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black), // Set the border color here
            borderRadius: BorderRadius.circular(25.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x66000000)),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
        //TextFormField(
      //   controller: controller,
      //
      //   //onSubmitted: onSubmitted,
      //   decoration: InputDecoration(
      //     hintText: 'Search',
      //     prefixIcon: Icon(Icons.search),
      //     border: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(25.0),
      //     ),
      //   ),
      // ),
    );
  }
}