import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CustomDropdown.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/TextButtonWidget.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/Subscriptions/FeaturedSubscription.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/Subscriptions/PremiumSubscrition.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/Subscriptions/SpecialVIC.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/Subscriptions/VerifiedSubscription.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/AddressTextForm.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/ButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/AccountScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

class GetSubscription extends StatefulWidget {
  const GetSubscription({Key? key}) : super(key: key);

  @override
  _GetSubscriptionState createState() => _GetSubscriptionState();
}

class _GetSubscriptionState extends State<GetSubscription> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Get Subscription"),
        ),
      body:
      SingleChildScrollView(child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Color(0xffF2F2F2),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Get",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        SizedBox(width: 5),
                        Image.asset("assets/images/home/Verified.png"),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                                CupertinoPageRoute(builder: (context) => VerifiedSubscription()
                                ));

                          },
                          child:Icon(Icons.arrow_forward, color: Color(0xffEF3D49)),

                        ),
                      ],
                    ),
                  ),
                ),

          SizedBox(height:15),

          Container(
            width: double.infinity,
            height: 50,
            color: Color(0xffF2F2F2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Get",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  SizedBox(width: 5),
                  Image.asset("assets/images/home/Premium.png"),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => PremiumSubscription()
                          ));

                    },
                    child:Icon(Icons.arrow_forward, color: Color(0xffEF3D49)),

                  ),
                ],
              ),
            ),
          ),

          SizedBox(height:15),

          Container(
            width: double.infinity,
            height: 50,
            color: Color(0xffF2F2F2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Get",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  SizedBox(width: 5),
                  Image.asset("assets/images/home/Featured.png"),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => FeaturedSubscription()
                          ));

                    },
                    child:Icon(Icons.arrow_forward, color: Color(0xffEF3D49)),

                  ),
                ],
              ),
            ),
          ),

          SizedBox(height:15),

          Container(
            width: double.infinity,
            height: 50,
            color: Color(0xffF2F2F2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Special VIC",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => SpecialVICSubscription()
                          ));
                    },
                    child:Icon(Icons.arrow_forward, color: Color(0xffEF3D49)),

                  ),
                ],
              ),
            ),
          ),


        ],
      ),
      ),

    );
  }
}