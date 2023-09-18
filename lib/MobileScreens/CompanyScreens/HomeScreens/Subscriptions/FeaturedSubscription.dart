import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/Subscriptions/SubscriptionWidget.dart';
import 'package:flutter/material.dart';

class FeaturedSubscription extends StatefulWidget {
  const FeaturedSubscription({Key? key}) : super(key: key);

  @override
  _FeaturedSubscriptionState createState() => _FeaturedSubscriptionState();
}

class _FeaturedSubscriptionState extends State<FeaturedSubscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Featured Subscription"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "NOTE",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff8F8F8F)),
            ),
            Text(
              "With featured spotlight, your car will be shown on the homepage as recommended, and at the top of the entire catalog. Even when, for example, you rent out a Mercedes and the Mercedes category is clicked, your car will immediately be at the top",
              style: TextStyle(fontSize: 15, color: Color(0xff8F8F8F)),
            ),
            SizedBox(height: 10),
            SubscriptionWidget(
              width: 302,
              height: 295,
              backgroundColor: Color(0xffF2F2F2),
              borderRadius: BorderRadius.circular(15.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/company/one month deal.png"),

                        SizedBox(width:15),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Buy Subscription",style: TextStyle(fontSize: 15,color: Colors.black),),
                            Text("1 Day",style: TextStyle(fontSize: 20,color: Color(0xffEF3D49),fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
