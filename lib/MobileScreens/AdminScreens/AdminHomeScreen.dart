import 'package:carrental/MobileScreens/AdminScreens/BrandAdvertisements/BrandAdvertisemets.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/FeaturedDealers.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/ManageDealersAccount.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/PremiumSubscription.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/VerifiedDealers.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/VerifiedRequestWidget.dart';
import 'package:carrental/MobileScreens/AdminScreens/PlansTimeline/PlansTimeline.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/ThemeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x66EF3D49),Colors.transparent],
                  stops: [0.0, 0.2], // Adjust the stop values as needed
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 80),
                      Text("Admin", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) => VerifiedDealers()
                              ));

                          print("Tapped!");
                        },
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset("assets/images/Vector.png"),
                              SizedBox(width: 6),
                              Text("Verified Dealers", style: TextStyle(fontSize: 15)),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) => FeaturedDealers()
                              ));

                          print("Tapped!");
                        },
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset("assets/images/Vector.png"),
                              SizedBox(width: 6),
                              Text("Featured Dealers", style: TextStyle(fontSize: 15)),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) => PremiumSubscription()
                              ));

                          print("Tapped!");
                        },

                        child: Center(
                          child: Row(
                            children: [
                              Image.asset("assets/images/Vector.png"),
                              SizedBox(width: 6),
                              Text("Premium subscription", style: TextStyle(fontSize: 15)),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),

                      ),

                      SizedBox(height: 20),

                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) => PlansTimeline()
                              ));

                          print("Tapped!");

                        },
                        child:Center(
                          child: Row(
                            children: [
                              Image.asset("assets/images/Vector.png"),
                              SizedBox(width: 6),
                              Text("Plans Timeline", style: TextStyle(fontSize: 15)),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),

                      ),

                      SizedBox(height: 20),

                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) => ManageDealersAccount()
                              ));

                          print("Tapped!");

                        },
                        child:Center(
                          child: Row(
                            children: [
                              Image.asset("assets/images/Vector.png"),
                              SizedBox(width: 6),
                              Text("Manage Dealers Account", style: TextStyle(fontSize: 15)),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),

                      ),

                      SizedBox(height: 20),

                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) => BrandAdvertisements()
                              ));

                          print("Tapped!");

                        },
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset("assets/images/Vector.png"),
                              SizedBox(width: 6),
                              Text("Brand advertisements", style: TextStyle(fontSize: 15)),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),

                      ),


                      SizedBox(height: 25),
                      Text("Log out", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ), // This container will take up remaining space
              ],
            ),

          ],
        )

    );
  }
}
