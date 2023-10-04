import 'package:carrental/MobileScreens/AdminScreens/AdminHomeScreen.dart';
import 'package:carrental/MobileScreens/AdminScreens/BrandAdvertisements/BrandAdvertisemets.dart';
import 'package:carrental/MobileScreens/AdminScreens/CreateNewBrands/CreateNewBrands.dart';
import 'package:carrental/MobileScreens/AdminScreens/PlansTimeline/PlansTimeline.dart';
import 'package:carrental/MobileScreens/AdminScreens/RenewScreen/RenewScreen.dart';
import 'package:carrental/MobileScreens/AdminScreens/ViewAds/ViewAds.dart';
import 'package:carrental/MobileScreens/SplashScreen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Rental',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

