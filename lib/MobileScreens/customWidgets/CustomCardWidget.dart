import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget CustomCardWidget(){
  return Container(padding: EdgeInsets.all(8),
    width:100,
    child:
    Column(
      children: [
        VxSwiper.builder(
            aspectRatio: 16/9,
            autoPlay: true,
            height: 250,
            enlargeCenterPage: false,
            itemCount: 2, itemBuilder:(context,index){
          return Container(
            child: Container().box.green200.make(),
          ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
        }),
        15.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Lucid".text.capitalize.bold.black.size(26).make(),
                "Air Edition".text.capitalize.black.size(19).make(),

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                "Rs. 34,000/per day".text.capitalize.bold.black.size(20).make(),
                RichText(text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "Rs. 3000 ",
                          style: TextStyle(fontSize: 22,color: Colors.grey)

                      ),
                      TextSpan(
                          text: "Deposit ",
                          style: TextStyle(fontSize: 16,color: Colors.grey)

                      ),
                      TextSpan(
                          text: " 400 Km",
                          style: TextStyle(fontSize: 16,color: Colors.grey)

                      )
                    ]
                ))


              ],
            )
          ],
        ),
        20.heightBox,
        Container(
          padding: EdgeInsets.all(10),
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Payment accepted in cash".text.gray400.size(18).make(),
              "Cash, Credit/Debit cards & Crupto".text.black.size(21).make()


            ],
          ),
        ).box.rounded.border(color: Vx.gray300).white.make(),
        10.heightBox

      ],
    ),
  ).box.rounded.border(color: Vx.gray300).white.make();
}