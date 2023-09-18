import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/CarDetailsPage.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/CarType.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CarProductCategory.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CarouselSwiperWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FacilityWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/TopCompany.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/images.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/lists.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomContainer(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x66EF3D49),Colors.transparent],
                    stops: [0.0, 0.2],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 24,
                          ),
                          Text("Place", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                            size: 24,
                          ),

                        ],
                      ),
                      Text("Bloc. 123, xyz address nxch", style: TextStyle(fontSize: 16)),


                      SizedBox(height:20),

                      Container(
                        height: context.screenHeight*.2,
                        width: context.screenWidth,
                        child: ListView(
                        scrollDirection: Axis.horizontal,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CarType()));

                              },
                              child: CarProductCategory(
                                  imagePath: "assets/images/home/Hatchback.png",
                                  text: "Suv/Hatchback"),

                            ),

                            SizedBox(width:15),

                            InkWell(
                              onTap: (){},
                              child: CarProductCategory(
                                  imagePath: "assets/images/home/Coupe.png",
                                  text: "Coupe/Sedan"),

                            ),

                            SizedBox(width:15),

                            InkWell(
                              onTap: (){},
                              child:CarProductCategory(
                                  imagePath: "assets/images/home/Luxury.png",
                                  text: "Luxury/Sports"),

                            ),


                            SizedBox(width:15),

                          ],
                        ),
                        // child: ListView.builder(scrollDirection: Axis.horizontal,itemCount:carCompanyList.length,itemBuilder: (BuildContext context,int index){
                        //   return Container(
                        //     child: SvgPicture.asset(carCompanyList[index],height: 24,width: 24,),
                        //   ).box.width(context.screenWidth*.4).height(context.screenHeight*.1).rounded.border(color: Vx.gray300).white.margin(EdgeInsets.all(10)).padding(EdgeInsets.all(12)).make();
                        //
                        // }),
                      ),
                      20.heightBox,
                      "Top Companies".text.bold.start.align(TextAlign.start).size(26).black.make(),
                      10.heightBox,
                      Container(
                        height: context.screenHeight*.17,
                        width: context.screenWidth,
                        child: ListView.builder(scrollDirection: Axis.horizontal,itemCount:carCompanyList.length,itemBuilder: (BuildContext context,int index){
                          return Container(
                            child: InkWell(
                                onTap: (){
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: TopCompany()));
                                },
                              child: SvgPicture.asset(carCompanyList[index],height: 15,width: 15,fit: BoxFit.fitWidth,),
                            )

                          ).box.width(context.screenWidth*.32).rounded.border(color: Vx.gray300).white.margin(EdgeInsets.all(10)).padding(EdgeInsets.all(25)).make();

                        }),
                      ),
                      20.heightBox,
                      "Most Popular".text.bold.start.align(TextAlign.start).size(26).black.make(),
                      10.heightBox,

                      // Most Popular

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
                                  VxSwiper.builder(
                                      aspectRatio: 16/9,
                                      autoPlay: true,
                                      height: 200,
                                      enlargeCenterPage: false,

                                      //pageSnapping: false,
                                      itemCount: 4, itemBuilder:(context,index){
                                    return Container(
                                      width: context.screenWidth,
                                      height:300,
                                      child: Image.asset(carImage,fit: BoxFit.cover,),
                                    ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                                  },
                                  ),
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
                                        width: 20,
                                        height: 20,
                                      ),
                                      3.widthBox,
                                      SvgPicture.asset(premiumTag,
                                        width: 20,
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


                      15.heightBox,
                      Stack(

                        children: [

                          Container(padding: EdgeInsets.all(8),
                            color:Color(0xffFAFAFA),
                            width: context.screenWidth*.95,
                            child:
                            Column(
                              children: [
                                VxSwiper.builder(
                                    aspectRatio: 16/9,
                                    autoPlay: true,
                                    height: 200,
                                    enlargeCenterPage: false,
                                    itemCount: 2, itemBuilder:(context,index){
                                  return Container(
                                    height:300,
                                    child: Image.asset(carImage,fit: BoxFit.cover,),
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
                                                  style: TextStyle(fontSize: 22,color: Colors.grey),
                                              ),

                                              TextSpan(
                                                  text: "Deposit ",
                                                  style: TextStyle(fontSize: 16,color: Colors.grey),
                                              ),

                                              TextSpan(
                                                  text: " 400 Km",
                                                  style: TextStyle(fontSize: 16,color: Colors.grey)
                                              ),

                                            ]
                                        )),
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

                                    SvgPicture.asset(premiumTag,
                                      width: 20,
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
                      15.heightBox,
                      Container(
                          alignment: Alignment.center,
                          child: "Advertisement Section".text.center.center.gray400.size(21).make()
                      ).box.rounded.border(color: Vx.gray300).white.height(200).width(context.screenWidth).make(),
                      15.heightBox,
                      Stack(
                        children: [
                          Container(padding: EdgeInsets.all(8),
                            width: context.screenWidth*.95,
                            color: Color(0xffFAFAFA),
                            child:
                            Column(
                              children: [

                                VxSwiper.builder(
                                    aspectRatio: 16/9,
                                    autoPlay: true,
                                    height: 200,
                                    enlargeCenterPage: false,
                                    itemCount: 2, itemBuilder:(context,index){
                                  return Container(
                                    height:300,
                                    child: Image.asset(carImage,fit: BoxFit.cover,),
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

                                    SvgPicture.asset(featuredTag,
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

                      15.heightBox,


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
                                      viewportFraction: 1.0,
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

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      FacilityWidget(imagePath: "assets/images/home/Auto.png", text: "Auto"),
                                      FacilityWidget(imagePath: "assets/images/home/Seats.png", text: "6 seat"),
                                      FacilityWidget(imagePath: "assets/images/home/hp.png", text: "200hp"),
                                      FacilityWidget(imagePath: "assets/images/home/Petrol.png", text: "Petrol")
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
                                  20.heightBox,

                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomContainers(
                                          width: 373,
                                          height: 51,
                                          color: Color(0xffFAFAFA),
                                          borderRadius: 15,
                                          borderColor: Color(0x22000000),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Delivery Possible?",style: TextStyle(fontSize: 15,),),
                                                SizedBox(width:10),
                                                Text("Yes",style: TextStyle(fontSize: 15,color: Color(0xff6CD248)),),
                                              ],
                                            ),
                                          ),

                                        ),

                                      )
                                    ],
                                  ),

                                  SizedBox(height:10),

                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomContainers(
                                          width: 373,
                                          height: 51,
                                          color: Color(0xffFAFAFA),
                                          borderRadius: 15,
                                          borderColor: Color(0x22000000),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Insurance included?",style: TextStyle(fontSize: 15,),),
                                                SizedBox(width:10),
                                                Text("No",style: TextStyle(fontSize: 15,color: Color(0xffEF3D49)),),
                                              ],
                                            ),
                                          ),

                                        ),

                                      )
                                    ],
                                  ),

                                  SizedBox(height:10),

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
                                      SizedBox(width:20),

                                      // SvgPicture.asset(verifiedTag,
                                      //   width: 20, // Adjust the width as needed
                                      //   height: 20,
                                      // ),
                                      // 3.widthBox,
                                      SvgPicture.asset(premiumTag,
                                        width: 20, // Adjust the width as needed
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top:7,right:7),
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

                    ],
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
