import 'package:carrental/MobileScreens/AdminScreens/RenewScreen/RenewButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FilterButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RenewScreen extends StatefulWidget {
  const RenewScreen({Key? key}) : super(key: key);

  @override
  _RenewScreenState createState() => _RenewScreenState();
}

class _RenewScreenState extends State<RenewScreen> {

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Renew"),
        ),
        body: SingleChildScrollView(
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                //height: 600,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0x33000000),
                    width: 1,
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
                              width: 50,
                              height: 50,
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

                        SizedBox(height:10),
                        Row(
                          children: [
                            Expanded(
                              child:
                              RenewButtonWidget(
                                borderRadius: 16,
                                text: "View ads",
                                backgroundColor: Color(0xffE8E8E8),
                                textColor: Color(0xff000000),
                                onPressed: (){},
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height:10),

                        Row(
                          children: [
                            Expanded(
                              child:
                              RenewButtonWidget(
                                borderRadius: 16,
                                text: "Renew for 1 week",
                                backgroundColor: Color(0xffEF3D49),
                                textColor: Color(0xffFFFFFF),
                                onPressed: (){},
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height:10),

                        Row(
                          children: [
                            Expanded(
                              child:
                              RenewButtonWidget(
                                borderRadius: 16,
                                text: "Renew for 1 month",
                                backgroundColor: Color(0xffEF3D49),
                                textColor: Color(0xffFFFFFF),
                                onPressed: (){},
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height:10),

                        Row(
                          children: [
                            Expanded(
                              child:
                              RenewButtonWidget(
                                borderRadius: 16,
                                text: "Renew for 3 months",
                                backgroundColor: Color(0xffEF3D49),
                                textColor: Color(0xffFFFFFF),
                                onPressed: (){},
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height:10),

                        Row(
                          children: [
                            Expanded(
                              child:
                              RenewButtonWidget(
                                borderRadius: 16,
                                text: "Renew for 6 months",
                                backgroundColor: Color(0xffEF3D49),
                                textColor: Color(0xffFFFFFF),
                                onPressed: (){},
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height:10),

                        Row(
                          children: [
                            Expanded(
                              child:
                              RenewButtonWidget(
                                borderRadius: 16,
                                text: "Renew for 1 year",
                                backgroundColor: Color(0xffEF3D49),
                                textColor: Color(0xffFFFFFF),
                                onPressed: (){},
                              ),
                            ),
                          ],
                        ),


                      ],
                    )

                )
            ),
          ),

        ),

        ),

    );
  }
}
