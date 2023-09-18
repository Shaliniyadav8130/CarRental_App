import 'package:carrental/MobileScreens/AdminScreens/AdminHomeScreen.dart';
import 'package:carrental/MobileScreens/AdminScreens/BrandAdvertisements/BrandAdvertisemets.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/DealersListing.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/FeaturedDealers.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/ManageDealersAccount.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/PremiumSubscription.dart';
import 'package:carrental/MobileScreens/AdminScreens/Dealers/VerifiedDealers.dart';
import 'package:carrental/MobileScreens/MainUserScreens/AdditionalInformation/AdditionalInformation.dart';
import 'package:carrental/MobileScreens/CompanyScreens/CompanyMainScreen.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/AddNewScreen.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/CompanyHomeScreen.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/EditDetails.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/Subscriptions/FeaturedSubscription.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/Subscriptions/VerifiedSubscription.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/Signup.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/SearchFilter.dart';
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
      home: const BrandAdvertisements(),
    );
  }
}

