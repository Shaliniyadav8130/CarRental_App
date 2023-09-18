import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouriteCardWidget extends StatelessWidget {
  const FavouriteCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      width: MediaQuery.of(context).size.width, // Set the width to screen width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0x33000000), // You can change the border color as needed
          width: 1, // You can change the border width as needed
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Row(
          children: [
            SizedBox(width:5),
            Container(
              width: 109, // Set the desired width for the image container
              height: 73, // Set the desired height for the image container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/images/home/Car.png"),
            ),
            SizedBox(width:10),
            Padding(padding: EdgeInsets.only(top:6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LUCID",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),

                Text("Air Edition",style: TextStyle(fontSize: 15),),
                SizedBox(height: 5,),
                Text("Rs. 34,000/per day",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ],
            ),

            ),

            Spacer(),

            Column(
              children:[
                Padding(padding: EdgeInsets.only(top:5,right:5),

                child:
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
                ),

              ]

            ),

            SizedBox(width:5),
          ],
        ),
      )
    );

  }
}
