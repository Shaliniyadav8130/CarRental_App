import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/AccountScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/LikedScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/SearchScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/controller/home_controller.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../MainUserScreens/UserScreens/HomeScreen.dart';
import '../MainUserScreens/UserScreens/controller/home_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var controller=Get.put(HomeContoller());

   List<ColorFiltered> unselectedIcons = [
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/home/HomeIcon.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/home/SearchIcon.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/home/HeartIcon.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/home/ProfileIcon.svg",
        width: 24,
        height: 24,
      ),
    )

  ];
  List<ColorFiltered> selectedIcons = [
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.deepOrange, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/home/HomeIcon.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.deepOrange, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/home/SearchIcon.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.deepOrange, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/home/HeartIcon.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.deepOrange, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/home/ProfileIcon.svg",
        width: 24,
        height: 24,
      ),
    )

  ];

  var navbarItem=[
    BottomNavigationBarItem(icon:
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.blue, // Change the color here
        BlendMode.dstIn,
      ),
      child: SvgPicture.asset(
        "assets/images/home/HomeIcon.svg",
        width: 24,
        height: 24,
      ),
    ),label: "Home"),
    BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/home/SearchIcon.svg"),label: "Categories"),
    BottomNavigationBarItem(icon: SvgPicture.asset(heartIcon),label: "My Cart"),
    BottomNavigationBarItem(icon: SvgPicture.asset(accountIcon),label: "Profile"),

  ];

  var navBody=[
    HomeScreen(),SearchScreen(),const LikedScreen(),const AccountScreen()

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
          BottomNavigationBar(currentIndex: controller.currentNavIndex.value,items:
          List.generate(
            navbarItem.length,
                (index) => BottomNavigationBarItem(
              icon: controller.currentNavIndex.value == index
                  ?
              selectedIcons[index]
                  : unselectedIcons[index],
              label: navbarItem[index].label,
            ),
          ),
            
            backgroundColor: CupertinoColors.white,type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.deepOrange,
            unselectedItemColor: Colors.grey,
            unselectedIconTheme: IconThemeData(color: Colors.black12),
            selectedIconTheme: IconThemeData(
              fill: .8,
              color: Colors.deepOrange
            ),
            onTap: (value){
              controller.currentNavIndex.value=value;
            },
            selectedLabelStyle: const TextStyle(),),
      ),
    );;
  }
}
