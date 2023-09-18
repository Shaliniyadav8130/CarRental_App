import 'package:carrental/MobileScreens/AdminScreens/Dealers/DealersWidgets/DealersCardWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/FeaturedDealersListing.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/PendingRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/RejectedRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/VerifiedRequestWidget.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/AvailableFilterButton.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CarAvailability.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FilterButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedDealers extends StatefulWidget {
  const FeaturedDealers({Key? key}) : super(key: key);

  @override
  _FeaturedDealersState createState() => _FeaturedDealersState();
}

class _FeaturedDealersState extends State<FeaturedDealers> {

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Featured Dealers"),
        ),
        body:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //SizedBox(height: 10),

              //SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount:5,
                      itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom:10),
                      child:DealersCardWidget(
                        onPressedlisting: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: FeaturedDealersListing()));

                        },
                        onPressedbadge: (){

                        },
                      ),
                    );
                                        },
                ),
              ),
//SizedBox(height: 10),
            ],
          ),
        ),

      ),
    );
  }
}
