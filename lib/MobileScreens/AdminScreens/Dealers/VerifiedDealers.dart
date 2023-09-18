import 'package:carrental/MobileScreens/AdminScreens/Dealers/PendingRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/RejectedRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/VerifiedRequestWidget.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/AvailableFilterButton.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CarAvailability.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FilterButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifiedDealers extends StatefulWidget {
  const VerifiedDealers({Key? key}) : super(key: key);

  @override
  _VerifiedDealersState createState() => _VerifiedDealersState();
}

class _VerifiedDealersState extends State<VerifiedDealers> {
  int statusIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Verified Dealers"),
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
                        text: 'Pending',
                        index: 0,
                        selectedIndex: statusIndex,
                        height: 40.0,
                        width: 57.0,
                        onPressed: () {
                          setState(() {
                            statusIndex = 0;
                          });
                        },
                      ),
                      AvailableFilterButton(
                        text: 'Verified',
                        index: 1,
                        selectedIndex: statusIndex,
                        height: 40.0,
                        width: 114.0,
                        onPressed: () {
                          setState(() {
                            statusIndex = 1;
                          });
                        },
                      ),
                      AvailableFilterButton(
                        text: 'Rejected',
                        index: 2,
                        selectedIndex: statusIndex,
                        height: 40.0,
                        width: 69.0,
                        onPressed: () {
                          setState(() {
                            statusIndex = 2;
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
                        itemCount: (statusIndex == 0)
                            ? 6/* Set the count for PendingRequestWidget */
                            : (statusIndex == 1)
                            ? 3/* Set the count for VerifiedRequestWidget */
                            : (statusIndex == 2)
                            ? 2/* Set the count for RejectedRequestWidget */
                            : 1, // No items for other cases
                        itemBuilder: (BuildContext context, int index) {
                          // Use a switch statement to choose the appropriate widget
                          switch (statusIndex) {
                            case 0:
                              return Padding(
                                  padding: EdgeInsets.symmetric(vertical:10),
                                  child:PendingRequestWidget(
                                    /* Add any properties or data for PendingRequestWidget here */
                                  )
                              );

                            case 1:
                              return Padding(
                                  padding: EdgeInsets.symmetric(vertical:10),
                                  child:VerifiedRequestWidget(
                                    /* Add any properties or data for PendingRequestWidget here */
                                  )
                              );
                            case 2:
                              return Padding(
                                  padding: EdgeInsets.symmetric(vertical:10),
                                  child:RejectedRequestWidget(
                                    /* Add any properties or data for PendingRequestWidget here */
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
