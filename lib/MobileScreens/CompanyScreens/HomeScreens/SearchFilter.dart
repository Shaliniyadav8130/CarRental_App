import 'package:carrental/MobileScreens/CompanyScreens/CompanyMainScreen.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/ProfileScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/AccountScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class CompanyThemeScreen extends StatefulWidget {
  const CompanyThemeScreen({Key? key}) : super(key: key);

  @override
  _CompanyThemeScreenState createState() => _CompanyThemeScreenState();
}

class _CompanyThemeScreenState extends State<CompanyThemeScreen> {
  int selectedOption = 0; // Variable to track the selected option

  void _handleOptionChange(int value) {
    setState(() {
      selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0x11EF3D49),
      //   title: Text(
      //     "Search Filter",
      //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //   ),
      //   // elevation: 0,
      //   // flexibleSpace: Container(
      //   //   decoration: BoxDecoration(
      //   //     gradient: LinearGradient(
      //   //       colors: [Color(0x33EF3D49),Colors.transparent],
      //   //       stops: [0.0, 0.9], // Adjust the stop values as needed
      //   //       begin: Alignment.topCenter,
      //   //       end: Alignment.bottomCenter,
      //   //     ),
      //   //   ),
      //   // ),
      // ),
      // //extendBodyBehindAppBar: true,

        body:
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x33EF3D49),Colors.transparent],
              stops: [0.0, 0.2], // Adjust the stop values as needed
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
            ),
          ),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height:60),
              Row(
                children: [
                  SizedBox(width:20),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CompanyMainScreen()));

                    },
                    child:Icon(Icons.arrow_back),
                  ),
                  //Icon(Icons.arrow_back),
                  SizedBox(width:10),
                  Text("Search Filter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              ),
              SizedBox(height:20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: _buildOption(0, "Default"),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: _buildOption(1, "Light Theme"),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: _buildOption(2, "Dark Theme"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }

  Widget _buildOption(int value, String text) {
    final isSelected = selectedOption == value;
    return InkWell(
      onTap: () {
        _handleOptionChange(value);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(width: 16),

          Container(

            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.red : Colors.black, // Border color
                width: 2.0, // Border width
              ),
              color: isSelected ? Colors.red : Colors.white,
            ),
            child: isSelected
                ? Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            )
                : null,
          ),
        ],
      ),

    );
  }
}

