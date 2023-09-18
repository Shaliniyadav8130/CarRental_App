import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/AddNewScreen.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/CompanyHomeScreen.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/ProfileScreen.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/controller/CompanyHomeController.dart';
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


class CompanyMainScreen extends StatefulWidget {
  const CompanyMainScreen({Key? key}) : super(key: key);

  @override
  State<CompanyMainScreen> createState() => _CompanyMainScreenState();

}

class _CompanyMainScreenState extends State<CompanyMainScreen> {
  var controller = Get.put(CompanyHomeContoller());

  List<ColorFiltered> unselectedIcons = [
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey,
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
        Colors.grey,
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/company/AddNew.svg",
        width: 24,
        height: 24,
      ),
    ),

    // ColorFiltered(
    //   colorFilter: ColorFilter.mode(
    //     Colors.grey,
    //     BlendMode.srcIn,
    //   ),
    //   child: SvgPicture.asset(
    //     "assets/images/home/HeartIcon.svg",
    //     width: 24,
    //     height: 24,
    //   ),
    // ),

    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey,
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
        Colors.deepOrange,
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
        Colors.deepOrange,
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/images/company/AddNew.svg",
        width: 24,
        height: 24,
      ),
    ),

    // ColorFiltered(
    //   colorFilter: ColorFilter.mode(
    //     Colors.deepOrange,
    //     BlendMode.srcIn,
    //   ),
    //   child: SvgPicture.asset(
    //     "assets/images/home/HeartIcon.svg",
    //     width: 24,
    //     height: 24,
    //   ),
    // ),

    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.deepOrange,
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
    BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/home/SearchIcon.svg"),label: "Add New"),
    //BottomNavigationBarItem(icon: SvgPicture.asset(heartIcon),label: "Add New"),
    BottomNavigationBarItem(icon: SvgPicture.asset(accountIcon),label: "Profile"),

  ];

  var navBody=[
    CompanyHomeScreen(),AddNewScreen(),const ProfileScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
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
    );
  }
}
