import 'package:carrental/MobileScreens/AdminScreens/RenewScreen/RenewButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FilterButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewAdsScreen extends StatefulWidget {
  const ViewAdsScreen({Key? key}) : super(key: key);

  @override
  _ViewAdsScreenState createState() => _ViewAdsScreenState();
}

class _ViewAdsScreenState extends State<ViewAdsScreen> {

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Scaffold(
        appBar: AppBar(
          title: Text("View Ads"),
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
                                    Expanded(
                                    child:CustomContainers(
                                      width: 353,
                                      height:69,
                                      borderRadius: 15,
                                      color: Color(0xffFFFFFF),
                                      child:Padding(
                                        padding: EdgeInsets.symmetric(horizontal:20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("1 month plan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("21 days",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                                Text("left of 30 days",style: TextStyle(fontSize: 12),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    ),
                                  ],
                                ),

                        SizedBox(height:20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Ad 1 • Size 00x00",style: TextStyle(fontSize: 12),),
                            Text("Edit Ad poster",style: TextStyle(fontSize: 12,color: Color(0xffEF3D49)),)
                          ],
                        ),

                        SizedBox(height:10),

                        Row(
                          children: [
                            Expanded(
                              child:CustomContainers(
                                width: 353,
                                height:104,
                                borderRadius: 5,
                                color: Color(0xffD9D9D9),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height:20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Ad 2 • Size 00x00",style: TextStyle(fontSize: 12),),
                            Text("Edit Ad poster",style: TextStyle(fontSize: 12,color: Color(0xffEF3D49)),)
                          ],
                        ),

                        SizedBox(height:10),

                        Row(
                          children: [
                            Expanded(
                              child:CustomContainers(
                                width: 353,
                                height:413,
                                borderRadius: 5,
                                color: Color(0xffD9D9D9),

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
