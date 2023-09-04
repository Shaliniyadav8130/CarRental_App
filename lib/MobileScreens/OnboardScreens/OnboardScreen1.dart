import 'package:carrental/MobileScreens/OnboardScreens/OnboardScreen2.dart';
import 'package:carrental/MobileScreens/OnboardScreens/OnboardWidgets/Illustration.dart';
import 'package:carrental/MobileScreens/OnboardScreens/OnboardWidgets/PageDotWidget.dart';
import 'package:carrental/MobileScreens/OnboardScreens/OnboardWidgets/ScreenArrow.dart';
import 'package:carrental/MobileScreens/OnboardScreens/OnboardWidgets/Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                OnboardScreenWidget(iconImagePath: "assets/images/Google.png"),

                SizedBox(height:10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(left:25),
                    child:PageDotWidget(color1: Color(0xffEF3D49), color2: Color(0x33EF3D49), color3: Color(0x33EF3D49), color4: Color(0x33EF3D49)),
                    ),

                    Padding(padding: EdgeInsets.only(right:25),
                     child:Text("Skip",style: TextStyle(color: Colors.black,fontSize: 12),),
                    ),


                    //SizedBox(width:25),

                  ],
                ),

                SizedBox(height: 40),

                TextWidget(
                  Headingtext: "Best Car Rental",
                  Subtext:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
              ],
            ),
          ),

          SizedBox(height:40),

          Row(
            mainAxisAlignment: MainAxisAlignment.end, // Center the buttons horizontally
            children: [
              CircularButton(
                icon: Icons.arrow_back,
                color1: Color(0x33EF3D49),
                onPressed: () {
                  // Add your backward arrow button logic here
                },
              ),

              SizedBox(width: 5),

              CircularButton(
                icon: Icons.arrow_forward,
                color1: Color(0xffEF3D49),
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => OnboardScreen2()
                      ));
                },
              ),

              SizedBox(width: 25),

            ],
          ),

          SizedBox(height:20),

        ],
      ),
    );
  }
}