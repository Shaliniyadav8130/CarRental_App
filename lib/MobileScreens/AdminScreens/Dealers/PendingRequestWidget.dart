import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/EditDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';


class PendingRequestWidget extends StatelessWidget {

  // PendingRequestWidget({
  // });

  const PendingRequestWidget({Key? key}) : super(key: key);

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

                          Text("here123@gmail.com",style: TextStyle(color: Color(0x66000000),fontSize: 15),),
                          //SizedBox(height: 5,),
                          Text("+91 9999 999 999",style: TextStyle(fontSize: 15,color: Color(0x66000000)),),
                          SizedBox(height:10),
                        ],
                      ),

                    ),


                    SizedBox(width:5),
                  ],
                ),

                //SizedBox(height:3),
                Row(
                  children: [
                    Expanded(
                      child:ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: EditDetails()));

                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff6CD248),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        child: Text('Accept',style: TextStyle(color: Colors.white),),
                      ),

                    ),

                    SizedBox(width:10),

                    Expanded(
                      child:ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: EditDetails()));

                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffEF3D49),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        child: Text('Reject',style: TextStyle(color: Colors.white),),
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
