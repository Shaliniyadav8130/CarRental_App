import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FacilityWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchProductWidget extends StatelessWidget {
  const SearchProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        width: MediaQuery.of(context).size.width, // Set the width to screen width
        decoration: BoxDecoration(
          color: Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0x33000000), // You can change the border color as needed
            width: 1, // You can change the border width as needed
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width:5),
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 110.0, // Set the desired width for the image container
                            height: 90.0, // Set the desired height for the image container
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0), // Set the desired border radius for the container
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0), // Set the desired border radius for the image
                              child: Image.asset(
                                "assets/images/home/Car.png",
                                width: 110.0, // Set the desired width for the image
                                height: 90.0, // Set the desired height for the image
                                fit: BoxFit.cover, // Adjust how the image fills the available space
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),SizedBox(width:10),
                  Padding(padding: EdgeInsets.only(top:8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("LUCID",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),

                        Text("Air Edition",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Container(
                              width:75,
                              height:22,
                              child: Image.asset("assets/images/home/Verified.png"),
                            ),

                            SizedBox(width:7),

                            Container(
                              width:75,
                              height:22,
                              child: Image.asset("assets/images/home/Premium.png"),
                            ),


                          ],
                        ),
                        Text("Rs. 34,000/per day",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),

                  ),

                  Spacer(),
                  Padding(padding: EdgeInsets.only(right:5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                              ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  Colors.grey, // Change the color here
                                  BlendMode.srcIn,
                                ),
                                child: SvgPicture.asset(
                                  "assets/images/home/HeartIcon.svg",
                                  width: 24,
                                  height: 24,
                                ),
                              ),

                        ]

                    ),

                  ),


                  SizedBox(width:5),
                ],
              ),
              SizedBox(height:10),

              Padding(padding: EdgeInsets.only(left:5,right:5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FacilityWidget(imagePath: "assets/images/home/Auto.png", text: "Auto"),
                    FacilityWidget(imagePath: "assets/images/home/Seats.png", text: "6 seat"),
                    FacilityWidget(imagePath: "assets/images/home/hp.png", text: "200hp"),
                    FacilityWidget(imagePath: "assets/images/home/Petrol.png", text: "Petrol")
                  ],
                ),

              ),



            ],
          ),

        )
    );

  }
}
