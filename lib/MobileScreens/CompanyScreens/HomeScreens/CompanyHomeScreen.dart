import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/AvailableFilterButton.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CarAvailability.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FilterButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyHomeScreen extends StatefulWidget {
  const CompanyHomeScreen({Key? key}) : super(key: key);

  @override
  _CompanyHomeScreenState createState() => _CompanyHomeScreenState();
}

class _CompanyHomeScreenState extends State<CompanyHomeScreen> {
  int availableIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x33EF3D49), Colors.transparent],
                    stops: [0.0, 0.2],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                         alignment: WrapAlignment.start,
                        spacing: 10.0,
                          children: [
                            AvailableFilterButton(
                              text: 'All',
                              index: 0,
                              selectedIndex: availableIndex,
                              height: 40.0,
                              width: 57.0,
                              onPressed: () {
                                setState(() {
                                  availableIndex = 0;
                                });
                              },
                            ),
                            AvailableFilterButton(
                              text: 'Available Car',
                              index: 1,
                              selectedIndex: availableIndex,
                              height: 40.0,
                              width: 114.0,
                              onPressed: () {
                                setState(() {
                                  availableIndex = 1;
                                });
                              },
                            ),
                            AvailableFilterButton(
                              text: 'On rent car',
                              index: 2,
                              selectedIndex: availableIndex,
                              height: 40.0,
                              width: 69.0,
                              onPressed: () {
                                setState(() {
                                  availableIndex = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: ListView.builder(
                        itemCount: (availableIndex == 0)
                            ? 5
                            : (availableIndex == 1)
                            ? 3
                            : (availableIndex == 2)
                            ? 4
                            : 1,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: CarAvailableWidget(
                              imagePath: (availableIndex == 0)
                                  ? (index % 2 == 0)
                                  ? "assets/images/company/Available.png"
                                  : "assets/images/company/Onrent.png"
                                  : (availableIndex == 1)
                                  ? "assets/images/company/Available.png"
                                  : "assets/images/company/Onrent.png",
                            ),
                          );
                        },
                      ),
                    ),
                    //SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
