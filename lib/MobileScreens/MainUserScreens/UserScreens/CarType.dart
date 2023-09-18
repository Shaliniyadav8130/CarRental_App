import 'package:carrental/MobileScreens/MainUserScreens/MainScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/AccountScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/CarDetailsPage.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FacilityWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/images.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/lists.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:velocity_x/velocity_x.dart';



class CarType extends StatefulWidget {
  const CarType({Key? key}) : super(key: key);

  @override
  _CarTypeState createState() => _CarTypeState();
}

class _CarTypeState extends State<CarType> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x33EF3D49), Colors.transparent],
                stops: [0.0, 0.2], // Adjust the stop values as needed
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
              ),
            ),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 60),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, PageTransition(
                            type: PageTransitionType.scale,
                            alignment: Alignment.bottomCenter,
                            child: MainScreen()));
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    //Icon(Icons.arrow_back),
                    SizedBox(width:10),
                    Text("SUV's / Hatchback",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
                //SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:10),
                      InkWell(
                        onTap:(){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CarDetailsPage()));
                        },
                        child:Stack(
                          children: [
                            Container(padding: EdgeInsets.all(8),
                              color:Color(0xffFAFAFA),
                              width: context.screenWidth*.95,
                              child:
                              Column(
                                children: [
                                  //CarouselSliderWithAutoPlayAndCustomIndicator(),
                                  VxSwiper.builder(
                                      aspectRatio: 16/9,
                                      autoPlay: true,
                                      height: 200,
                                      enlargeCenterPage: false,
                                      itemCount: 2, itemBuilder:(context,index){
                                    return Container(
                                      width: context.screenWidth,
                                      height:300,
                                      child: Image.asset(carImage,fit: BoxFit.cover,),
                                      // You can adjust the fit as needed
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
                                    width: context.screenWidth*.9,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        "Payment accepted in cash".text.gray400.size(16).make(),
                                        "💰 Cash, 💳 Credit/Debit cards & 🪙 Crypto".text.black.size(16).make()
                                      ],
                                    ),
                                  ).box.rounded.border(color: Vx.gray300).white.make(),
                                  10.heightBox

                                ],
                              ),
                            ).box.rounded.border(color: Vx.gray300).white.make(),
                            Padding(
                              padding: const EdgeInsets.only(left:12,right:12,top:4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width:44),

                                      SvgPicture.asset(verifiedTag,
                                        width: 20, // Adjust the width as needed
                                        height: 20,
                                      ),
                                      3.widthBox,
                                      SvgPicture.asset(premiumTag,
                                        width: 20, // Adjust the width as needed
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top:5,right:5),
                                    child: Container(
                                      child: SvgPicture.asset(heartIcon),
                                    ).box.padding(EdgeInsets.symmetric(horizontal: 12,vertical: 12)).rounded.border(color: Vx.gray300).white.make(),

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height:10),

                      InkWell(
                        onTap:(){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CarDetailsPage()));
                        },
                        child:Stack(
                          children: [
                            Container(padding: EdgeInsets.all(8),
                              color:Color(0xffFAFAFA),
                              width: context.screenWidth*.95,
                              child:
                              Column(
                                children: [
                                  //CarouselSliderWithAutoPlayAndCustomIndicator(),
                                  VxSwiper.builder(
                                      aspectRatio: 16/9,
                                      autoPlay: true,
                                      height: 200,
                                      enlargeCenterPage: false,
                                      itemCount: 2, itemBuilder:(context,index){
                                    return Container(
                                      width: context.screenWidth,
                                      height:300,
                                      child: Image.asset(carImage,fit: BoxFit.cover,),
                                      // You can adjust the fit as needed
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
                                    width: context.screenWidth*.9,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        "Payment accepted in cash".text.gray400.size(16).make(),
                                        "💰 Cash, 💳 Credit/Debit cards & 🪙 Crypto".text.black.size(16).make()
                                      ],
                                    ),
                                  ).box.rounded.border(color: Vx.gray300).white.make(),
                                  10.heightBox

                                ],
                              ),
                            ).box.rounded.border(color: Vx.gray300).white.make(),
                            Padding(
                              padding: const EdgeInsets.only(left:12,right:12,top:4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width:44),

                                      // SvgPicture.asset(verifiedTag,
                                      //   width: 20, // Adjust the width as needed
                                      //   height: 20,
                                      // ),
                                      3.widthBox,
                                      SvgPicture.asset(premiumTag,
                                        width: 20, // Adjust the width as needed
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top:5,right:5),
                                    child: Container(
                                      child: SvgPicture.asset(heartIcon),
                                    ).box.padding(EdgeInsets.symmetric(horizontal: 12,vertical: 12)).rounded.border(color: Vx.gray300).white.make(),

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height:10),

                      InkWell(
                        onTap:(){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CarDetailsPage()));
                        },
                        child:Stack(
                          children: [
                            Container(padding: EdgeInsets.all(8),
                              color:Color(0xffFAFAFA),
                              width: context.screenWidth*.95,
                              child:
                              Column(
                                children: [
                                  //CarouselSliderWithAutoPlayAndCustomIndicator(),
                                  VxSwiper.builder(
                                      aspectRatio: 16/9,
                                      autoPlay: true,
                                      height: 200,
                                      enlargeCenterPage: false,
                                      itemCount: 2, itemBuilder:(context,index){
                                    return Container(
                                      width: context.screenWidth,
                                      height:300,
                                      child: Image.asset(carImage,fit: BoxFit.cover,),
                                      // You can adjust the fit as needed
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
                                    width: context.screenWidth*.9,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        "Payment accepted in cash".text.gray400.size(16).make(),
                                        "💰 Cash, 💳 Credit/Debit cards & 🪙 Crypto".text.black.size(16).make()
                                      ],
                                    ),
                                  ).box.rounded.border(color: Vx.gray300).white.make(),
                                  10.heightBox

                                ],
                              ),
                            ).box.rounded.border(color: Vx.gray300).white.make(),
                            Padding(
                              padding: const EdgeInsets.only(left:12,right:12,top:4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width:44),

                                      // SvgPicture.asset(verifiedTag,
                                      //   width: 20, // Adjust the width as needed
                                      //   height: 20,
                                      // ),
                                      3.widthBox,
                                      SvgPicture.asset(premiumTag,
                                        width: 20, // Adjust the width as needed
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top:5,right:5),
                                    child: Container(
                                      child: SvgPicture.asset(heartIcon),
                                    ).box.padding(EdgeInsets.symmetric(horizontal: 12,vertical: 12)).rounded.border(color: Vx.gray300).white.make(),

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height:10),
                    ],
            ),
          )
              ],
      ),
      ),
    ),

    );
  }

}