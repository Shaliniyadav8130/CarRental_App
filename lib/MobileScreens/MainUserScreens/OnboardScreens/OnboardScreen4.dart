import 'package:carrental/MobileScreens/MainUserScreens/AdditionalInformation/AdditionalInformation.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardScreen3.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardWidgets/Illustration.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardWidgets/PageDotWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardWidgets/Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

class OnboardScreen4 extends StatefulWidget {
  @override
  _OnboardScreen4State createState() => _OnboardScreen4State();
}

class _OnboardScreen4State extends State<OnboardScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height: 100,),

          Expanded(
            child: Column(
              children: [
                OnboardScreenWidget(iconImagePath: "assets/images/Google.png"),

                SizedBox(height:10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(padding: EdgeInsets.only(left:25),
                      child:PageDotWidget(color1: Color(0x33EF3D49), color2: Color(0x33EF3D49), color3: Color(0x33EF3D49), color4: Color(0xffEF3D49)),
                    ),

                    Padding(padding: EdgeInsets.only(right:25),
                      child:Text("Skip",style: TextStyle(color: Colors.black,fontSize: 12),),
                    ),


                    //SizedBox(width:25),

                  ],
                ),

                SizedBox(height: 40),

                TextWidget(
                  Headingtext: "Best Deals",
                  Subtext:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
              ],
            ),
          ),

          SizedBox(height:40),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Container(
                width: 175,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: AdditionalInformation()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEF3D49),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child:Text("Let's Go",style: TextStyle(color: Colors.white),),
                ),
              ),

              SizedBox(width:25),

            ],
          ),

          SizedBox(height:20),

        ],
      ),
    );
  }
}