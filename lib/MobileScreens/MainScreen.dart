import 'package:carrental/MobileScreens/UserScreens/AccountScreen.dart';
import 'package:carrental/MobileScreens/UserScreens/LikedScreen.dart';
import 'package:carrental/MobileScreens/UserScreens/SearchScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'UserScreens/HomeScreen.dart';
import 'UserScreens/controller/home_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var controller=Get.put(HomeContoller());

  var navbarItem=[
    BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search),label: "Categories"),
    BottomNavigationBarItem(icon: Icon(Icons.heart_broken),label: "My Cart"),
    BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: "Profile"),

  ];

  var navBody=[
    const HomeScreen(),const SearchScreen(),const LikedScreen(),const AccountScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value),)),
        ],
      ),
      bottomNavigationBar: Obx(()=>
          BottomNavigationBar(currentIndex: controller.currentNavIndex.value,items: navbarItem,backgroundColor: CupertinoColors.white,type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.deepOrange,
            onTap: (value){
              controller.currentNavIndex.value=value;
            },
            selectedLabelStyle: const TextStyle(),),
      ),
    );;
  }
}
