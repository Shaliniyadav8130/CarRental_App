import 'package:carrental/MobileScreens/AdminScreens/Dealers/PendingRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/RejectedRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/VerifiedRequestWidget.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/AvailableFilterButton.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CarAvailability.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FacilityWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FilterButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PremiumDealersListing extends StatefulWidget {
  const PremiumDealersListing({Key? key}) : super(key: key);

  @override
  _PremiumDealersListingState createState() => _PremiumDealersListingState();
}

class _PremiumDealersListingState extends State<PremiumDealersListing> {
  int statusIndex = 0;


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return CustomContainer(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dealers Listing"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10.0), // Add the desired spacing height here
            child: SizedBox(), // You can use SizedBox or any other widget for spacing
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50, // Set the desired width for the image container
                            height: 50, // Set the desired height for the image container
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/images/home/Men.png"),
                          ),
                          SizedBox(width:10),
                          Padding(padding: EdgeInsets.only(top:6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Johnson",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),

                                Text("here123@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0x66000000),fontSize: 15),),
                                //SizedBox(height: 5,),
                                Text("+91 9999 999 999",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0x66000000)),),
                                SizedBox(height:10),

                                Image.asset("assets/images/home/Premium.png"),

                                Row(
                                  children: [
                                    Text("Plan expires in"),
                                    SizedBox(width:2),
                                    Text("21 days",style: TextStyle(color: Color(0xff6CD248)),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  Container(
                      height: screenHeight * 0.8,
                      child: ListView.builder(shrinkWrap: true,itemCount: 5,itemBuilder: (context, index){
                        return Padding(padding: EdgeInsets.only(top:10),
                            child:Container(
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
                                padding: EdgeInsets.all(7),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                              Text("5 star rated",style: TextStyle(color: Color(0xff6CD248),fontSize: 15),),

                                              Text("Rs. 34,000/per day",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                            ],
                                          ),

                                        ),

                                        Spacer(),
                                        Padding(padding: EdgeInsets.only(right:5),
                                          child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                Image.asset("assets/images/Delete 2.png")
                                                // ColorFiltered(
                                                //   colorFilter: ColorFilter.mode(
                                                //     Colors.grey, // Change the color here
                                                //     BlendMode.srcIn,
                                                //   ),
                                                //   child: SvgPicture.asset(
                                                //     "assets/images/home/HeartIcon.svg",
                                                //     width: 24,
                                                //     height: 24,
                                                //   ),
                                                // ),

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
                              ),
                            )
                        );
                      })
                  )


                ],
              ),
            ),

          ],

        ),
      ),
    );
  }
}
