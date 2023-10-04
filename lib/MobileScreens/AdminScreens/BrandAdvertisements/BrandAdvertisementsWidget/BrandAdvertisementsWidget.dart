import 'package:carrental/MobileScreens/AdminScreens/Dealers/DealersListing.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/EditDetails.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class BrandAdvertisementCard extends StatelessWidget {
  final VoidCallback onPressedlisting;
  final VoidCallback onPressedbadge;


  BrandAdvertisementCard({
    required this.onPressedlisting,
    required this.onPressedbadge,
  });

  // PendingRequestWidget({
  // });

  //const DealersCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 102,
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
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width:5),
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
                          Text("+91 9999 999 999",style: TextStyle(fontSize: 15,color: Color(0x66000000)),),
                          SizedBox(height:10),
                        ],
                      ),

                    ),

                    //SizedBox(width:5),

                    Spacer(),
                    Padding(padding: EdgeInsets.only(right:5),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                Image.asset("assets/images/Edit.png"),
                                SizedBox(width:4),
                                Image.asset("assets/images/Delete 2.png")

                              ],
                            ),

                          ]

                      ),

                    ),

                  ],
                ),

                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Display posters",style: TextStyle(fontSize: 15,color: Color(0xff000000)),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomContainers(width: 54,height:61,borderRadius: 5,color: Color(0xffD9D9D9),),

                            SizedBox(width:5),

                            CustomContainers(width: 54,height:61,borderRadius: 5,color: Color(0xffD9D9D9),),

                            SizedBox(width:5),

                            CustomContainers(width: 54,height:61,borderRadius: 5,color: Color(0xffD9D9D9),),

                          ],
                        ),
                      ],
                    ),

                    SizedBox(width:10),

                    Expanded(
                        child: CustomContainers(
                          borderRadius: 15,
                          height:84,
                          width:171,
                          color: Color(0xffFFFFFF),
                          borderColor: Color(0x1A000000),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical:10),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1 month Plan",style: TextStyle(fontSize: 12,color: Color(0xff232121),fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                Text("21 days",style: TextStyle(fontSize: 15,color: Color(0xff232121),fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                Text("left of 30 days",style: TextStyle(fontSize: 12,color: Color(0xff232121),),textAlign: TextAlign.left,),

                              ],
                            ),

                          ),
                         )

                    ),
                    
                    ],
                ),

                //SizedBox(height:3),
                Row(
                  children: [
                    Expanded(
                      child:ElevatedButton(
                        onPressed: onPressedlisting,
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffE8E8E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        child: Text('View ads',style: TextStyle(color: Colors.black),),
                      ),
                    ),

                    SizedBox(width:10),

                    Expanded(
                      child:ElevatedButton(
                        onPressed: onPressedbadge,
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffEF3D49),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        child: Text('Renew',style: TextStyle(color: Colors.white),),
                      ),

                    ),

                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      child:ElevatedButton(
                        onPressed: onPressedlisting,
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffE8E8E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        child: Text('Send notification alert',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),

              ],
            )

        )
    );


  }
}
