import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String Headingtext;
  final String Subtext;

  TextWidget({
    required this.Headingtext,
    required this.Subtext,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
       child:Column(
         mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Text(Headingtext,
        style: TextStyle(fontSize: 30,color: Color(0xffEF3D49,),fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        Text(Subtext,
          style: TextStyle(fontSize: 15,color: Color(0xff000000,)),
        ),
      ],
    )
    );
  }
}
