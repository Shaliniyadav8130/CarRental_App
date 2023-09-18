import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/ThemeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

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
                      Text("Profile", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xffEF3D49),
                              width: 5,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/profile.jpg"),
                            radius: 110 / 2,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Text("Name", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Text("here@gmail.com", style: TextStyle(fontSize: 15)),
                      ),
                      Center(
                        child: Text("+91 999 999999", style: TextStyle(fontSize: 15)),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 24,
                            ),
                            Text("Place", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Center(
                        child: Text("Block 123,xyz address nxch", style: TextStyle(fontSize: 15)),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Container(
                          width: 141,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(context,
                              //     CupertinoPageRoute(builder: (context) => AdditionalInformation()
                              //     ));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffEF3D49),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            child: Text("Edit", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Row(
                          children: [
                            Image.asset("assets/images/Vector.png"),
                            SizedBox(width: 6),
                            Text("Become a Seller", style: TextStyle(fontSize: 15)),
                            Spacer(),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) => ThemeScreen()
                              ));

                          print("Tapped!");
                        },
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset("assets/images/Vector.png"),
                              SizedBox(width: 6),
                              Text("Theme", style: TextStyle(fontSize: 15)),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Row(
                          children: [
                            Image.asset("assets/images/Vector.png"),
                            SizedBox(width: 6),
                            Text("Help", style: TextStyle(fontSize: 15)),
                            Spacer(),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
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
