import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FavouriteCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Search Filter", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),

                  SizedBox(height: 20),
                  Expanded( // Wrap your ListView.builder with Expanded
                    child: ListView.builder(
                      itemCount: 5, // Set the itemCount to 5 to repeat the widget 5 times
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(padding: EdgeInsets.only(top:20,),
                            child: FavouriteCardWidget()// Your widget to be repeated

                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
