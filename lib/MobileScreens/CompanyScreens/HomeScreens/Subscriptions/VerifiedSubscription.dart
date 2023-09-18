import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CustomDropdown.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/TextButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/AddressTextForm.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/ButtonWidget.dart';
import 'package:carrental/MobileScreens//MainUserScreens/UserScreens/AccountScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class VerifiedSubscription extends StatefulWidget {
  const VerifiedSubscription({Key? key}) : super(key: key);

  @override
  _VerifiedSubscriptionState createState() => _VerifiedSubscriptionState();
}

class _VerifiedSubscriptionState extends State<VerifiedSubscription> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verified Subscription"),
      ),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("NOTE",style: TextStyle(fontSize: 12,color: Color(0xff8F8F8F),fontWeight: FontWeight.bold),),
            Text("With each package, you receive the verified badge.",style: TextStyle(fontSize: 12,color: Color(0xff8F8F8F),fontWeight: FontWeight.bold),),
            SizedBox(height:7),

          ],
        ),
      ),
    );
  }
}