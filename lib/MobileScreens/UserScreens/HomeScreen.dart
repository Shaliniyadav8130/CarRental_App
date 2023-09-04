import 'package:carrental/MobileScreens/constants/images.dart';
import 'package:carrental/MobileScreens/constants/lists.dart';
import 'package:carrental/MobileScreens/customWidgets/CustomContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomContainer(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: context.screenHeight*.2,
                    width: context.screenWidth,
                    child: ListView.builder(scrollDirection: Axis.horizontal,itemCount:carCompanyList.length,itemBuilder: (BuildContext context,int index){
                      return Container(
                        child: SvgPicture.asset(carCompanyList[index],height: 24,width: 24,),
                      ).box.width(context.screenWidth*.4).height(context.screenHeight*.1).rounded.border(color: Vx.gray300).white.margin(EdgeInsets.all(10)).padding(EdgeInsets.all(12)).make();

                    }),
                  ),
                  20.heightBox,
                  "Top Companies".text.bold.start.align(TextAlign.start).size(26).black.make(),
                  10.heightBox,
                  Container(
                    height: context.screenHeight*.17,
                    width: context.screenWidth,
                    child: ListView.builder(scrollDirection: Axis.horizontal,itemCount:carCompanyList.length,itemBuilder: (BuildContext context,int index){
                      return Container(
                        child: SvgPicture.asset(carCompanyList[index],height: 15,width: 15,fit: BoxFit.fitWidth,),
                      ).box.width(context.screenWidth*.32).rounded.border(color: Vx.gray300).white.margin(EdgeInsets.all(10)).padding(EdgeInsets.all(25)).make();

                    }),
                  ),
                  20.heightBox,
                  "Most Popular".text.bold.start.align(TextAlign.start).size(26).black.make(),
                  10.heightBox,
                  Stack(

                    children: [

                      Container(padding: EdgeInsets.all(8),
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
                                child: Image.asset(carImage),
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
                                  "Payment accepted in cash".text.gray400.size(18).make(),
                                  "Cash, Credit/Debit cards & Crupto".text.black.size(20).make()


                                ],
                              ),
                            ).box.rounded.border(color: Vx.gray300).white.make(),
                            10.heightBox

                          ],
                        ),
                      ).box.rounded.border(color: Vx.gray300).white.make(),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(featuredTag),
                                3.widthBox,
                                SvgPicture.asset(premiumTag),
                              ],
                            ),
                            Container(
                              child: SvgPicture.asset(heartIcon),
                            ).box.padding(EdgeInsets.symmetric(horizontal: 12,vertical: 12)).rounded.border(color: Vx.gray300).white.make()
                          ],
                        ),
                      ),
                    ],
                  ),
                  15.heightBox,
                  Stack(

                    children: [

                      Container(padding: EdgeInsets.all(8),
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
                                child: Image.asset(carImage),
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
                                  "Payment accepted in cash".text.gray400.size(18).make(),
                                  "Cash, Credit/Debit cards & Crupto".text.black.size(20).make()


                                ],
                              ),
                            ).box.rounded.border(color: Vx.gray300).white.make(),
                            10.heightBox

                          ],
                        ),
                      ).box.rounded.border(color: Vx.gray300).white.make(),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(featuredTag),
                                3.widthBox,
                                SvgPicture.asset(premiumTag),
                              ],
                            ),
                            Container(
                              child: SvgPicture.asset(heartIcon),
                            ).box.padding(EdgeInsets.symmetric(horizontal: 12,vertical: 12)).rounded.border(color: Vx.gray300).white.make()
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
                                child: Image.asset(carImage),
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
                                  "Payment accepted in cash".text.gray400.size(18).make(),
                                  "Cash, Credit/Debit cards & Crupto".text.black.size(20).make()


                                ],
                              ),
                            ).box.rounded.border(color: Vx.gray300).white.make(),
                            10.heightBox

                          ],
                        ),
                      ).box.rounded.border(color: Vx.gray300).white.make(),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(featuredTag),
                                3.widthBox,
                                SvgPicture.asset(premiumTag),
                              ],
                            ),
                            Container(
                              child: SvgPicture.asset(heartIcon),
                            ).box.padding(EdgeInsets.symmetric(horizontal: 12,vertical: 12)).rounded.border(color: Vx.gray300).white.make()
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
