import 'package:flutter/material.dart';

class OnboardScreenWidget extends StatelessWidget {
  final String iconImagePath;

  OnboardScreenWidget({
    required this.iconImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child:Container(
        width: MediaQuery.of(context).size.width, // Set width to screen width
        height: 300, // Set the desired height
        decoration: BoxDecoration(
          color: Color(0xffEF3D49), // Set your desired color
          borderRadius: BorderRadius.circular(25), // Set 25px border radius
        ),
        child: Center(
          child: Text(
            'Illustration here',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),

      ),
        ),
    );
  }
}
