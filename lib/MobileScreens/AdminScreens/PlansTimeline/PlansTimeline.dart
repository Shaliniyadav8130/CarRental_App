import 'package:carrental/MobileScreens/AdminScreens/Dealers/PendingRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/RejectedRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/VerifiedRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/PlansTimeline/PlansTimelineComponents/PlansCard.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/AvailableFilterButton.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CarAvailability.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FilterButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlansTimeline extends StatefulWidget {
  const PlansTimeline({Key? key}) : super(key: key);

  @override
  _PlansTimelineState createState() => _PlansTimelineState();
}

class _PlansTimelineState extends State<PlansTimeline> {
  int plantimeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Plans timeline"),
          bottom:PreferredSize(
            preferredSize: Size.fromHeight(70.0), // Adjust the height as needed

            child: Padding(
              padding: EdgeInsets.only(left: 15,bottom:15),
              child: Row(
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 10.0,
                    children: [
                      AvailableFilterButton(
                        text: 'Verified',
                        index: 0,
                        selectedIndex: plantimeIndex,
                        height: 40.0,
                        width: 57.0,
                        onPressed: () {
                          setState(() {
                            plantimeIndex = 0;
                          });
                        },
                      ),
                      AvailableFilterButton(
                        text: 'Featured',
                        index: 1,
                        selectedIndex: plantimeIndex,
                        height: 40.0,
                        width: 114.0,
                        onPressed: () {
                          setState(() {
                            plantimeIndex = 1;
                          });
                        },
                      ),
                      AvailableFilterButton(
                        text: 'Premium',
                        index: 2,
                        selectedIndex: plantimeIndex,
                        height: 40.0,
                        width: 69.0,
                        onPressed: () {
                          setState(() {
                            plantimeIndex = 2;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ),
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
                  itemCount: (plantimeIndex == 0)
                      ? 6/* Set the count for PendingRequestWidget */
                      : (plantimeIndex == 1)
                      ? 3/* Set the count for VerifiedRequestWidget */
                      : (plantimeIndex == 2)
                      ? 2/* Set the count for RejectedRequestWidget */
                      : 1, // No items for other cases
                  itemBuilder: (BuildContext context, int index) {
                    // Use a switch statement to choose the appropriate widget
                    switch (plantimeIndex) {
                      case 0:
                        return Padding(
                            padding: EdgeInsets.symmetric(vertical:10),
                            child:PlansCard(
                              onPressedlisting: (){
                                //Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: PremiumDealersListing()));

                              },
                              onPressedbadge: (){

                              },
                            )
                        );

                      case 1:
                        return Padding(
                            padding: EdgeInsets.symmetric(vertical:10),
                            child:PlansCard(
                              onPressedlisting: (){
                                //Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: PremiumDealersListing()));

                              },
                              onPressedbadge: (){

                              },
                            )
                        );
                      case 2:
                        return Padding(
                            padding: EdgeInsets.symmetric(vertical:10),
                            child:PlansCard(
                              onPressedlisting: (){
                                //Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: PremiumDealersListing()));

                              },
                              onPressedbadge: (){

                              },
                            )
                        );
                      default:
                        return Container(); // Placeholder for other cases
                    }
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
