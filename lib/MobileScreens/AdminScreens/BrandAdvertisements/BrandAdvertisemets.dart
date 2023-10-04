import 'package:carrental/MobileScreens/AdminScreens/BrandAdvertisements/BrandAdvertisementsWidget/BrandAdvertisementsWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/DealersWidgets/DealersCardWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/FeaturedDealersListing.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/PendingRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/PremiumDealersListing.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/RejectedRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/VerifiedRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/RenewScreen/RenewScreen.dart';
import 'package:carrental/MobileScreens/AdminScreens/ViewAds/ViewAds.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/AvailableFilterButton.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CarAvailability.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FilterButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandAdvertisements extends StatefulWidget {
  const BrandAdvertisements({Key? key}) : super(key: key);

  @override
  _BrandAdvertisementsState createState() => _BrandAdvertisementsState();
}

class _BrandAdvertisementsState extends State<BrandAdvertisements> {
  int brandIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Brand advertisements"),
        ),
        body:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: InkWell(
                        onTap: (){},
                        child: CustomContainers(
                          borderRadius: 15,
                          borderColor: Color(0xffEF3D49),
                          height:71,
                          width: 353,
                          color: Color(0xffFAFAFA),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add,color: Color(0xffEF3D49),),
                                SizedBox(
                                  width:5,
                                ),
                                Text("Create New Brands Ads",style: TextStyle(color: Color(0xffEF3D49),fontWeight: FontWeight.bold,fontSize: 16),)
                              ],
                            ),
                          ),
                        ),
                      ),

                  )
                ],
              ),

              SizedBox(height: 15),

              Container(
                height: 35,
                width: context.screenWidth,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AvailableFilterButton(
                      text: 'All',
                      index: 0,
                      selectedIndex: brandIndex,
                      height: 35.0,
                      width: 48.0,
                      onPressed: () {
                        setState(() {
                          brandIndex = 0;
                        });
                      },
                    ),
                SizedBox(width:4),
                AvailableFilterButton(
                            text: 'Expiring soon',
                            index: 1,
                            selectedIndex: brandIndex,
                            height: 30.0,
                            width: 114.0,
                            onPressed: () {
                              setState(() {
                                brandIndex = 1;
                              });
                            },
                          ),

                          SizedBox(width:4),

                          AvailableFilterButton(
                            text: '1 month left',
                            index: 2,
                            selectedIndex: brandIndex,
                            height: 30.0,
                            width: 69.0,
                            onPressed: () {
                              setState(() {
                                brandIndex = 2;
                              });
                            },
                          ),

                    SizedBox(width:4),

                    AvailableFilterButton(
                      text: '1 year left',
                      index: 3,
                      selectedIndex: brandIndex,
                      height: 30.0,
                      width: 69.0,
                      onPressed: () {
                        setState(() {
                          brandIndex = 3;
                        });
                      },
                    ),
                  ],
                ),

              ),

              SizedBox(height:15),


              Expanded(
                child: ListView.builder(
                  itemCount:5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom:10),
                      child:BrandAdvertisementCard(
                        onPressedlisting: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ViewAdsScreen()));
                        },
                        onPressedbadge: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: RenewScreen()));

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
