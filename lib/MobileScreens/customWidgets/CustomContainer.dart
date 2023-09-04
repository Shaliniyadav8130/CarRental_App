import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget CustomContainer({child}){
  return
    Container(
      child: child,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0x66EF3D49),Colors.transparent],
          stops: [0.0, 0.2], // Adjust the stop values as needed
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
        ),
      ),
    );
}