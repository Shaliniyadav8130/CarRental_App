import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CustomDropdown.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/TextButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/AddressTextForm.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/ButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/AccountScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PremiumSubscription extends StatefulWidget {
  const PremiumSubscription({Key? key}) : super(key: key);

  @override
  _PremiumSubscriptionState createState() => _PremiumSubscriptionState();
}

class _PremiumSubscriptionState extends State<PremiumSubscription> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Premium Subscription"),
      ),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          ],
        ),
      ),

    );
  }
}