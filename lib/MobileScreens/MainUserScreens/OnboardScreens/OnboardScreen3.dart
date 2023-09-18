import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardScreen2.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardScreen4.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardWidgets/Illustration.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardWidgets/PageDotWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardWidgets/ScreenArrow.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardWidgets/Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

class OnboardScreen3 extends StatefulWidget {
  @override
  _OnboardScreen3State createState() => _OnboardScreen3State();
}

class _OnboardScreen3State extends State<OnboardScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height:100),

          Expanded(
            child: Column(
              children: [

                OnboardScreenWidget(iconImagePath: "assets/images/Google.png"),

                SizedBox(height:10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(padding: EdgeInsets.only(left:25),
                      child:PageDotWidget(color1: Color(0x33EF3D49), color2: Color(0x33EF3D49), color3: Color(0xffEF3D49), color4: Color(0x33EF3D49)),
                    ),

                    Padding(padding: EdgeInsets.only(right:25),
                      child:Text("Skip",style: TextStyle(color: Colors.black,fontSize: 12),),
                    ),


                    //SizedBox(width:25),

                  ],
                ),

                SizedBox(height: 40),

                TextWidget(
                  Headingtext: "Top rental Companies",
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
                color1: Color(0xffEF3D49),
                onPressed: () {
                  Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: OnboardScreen2()));},
              ),

              SizedBox(width: 5),

              CircularButton(
                icon: Icons.arrow_forward,
                 color1: Color(0xffEF3D49),
                onPressed: () {
                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: OnboardScreen4()));
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