import 'package:carrental/MobileScreens/MainUserScreens/MainScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FilterButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/images.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/lists.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:velocity_x/velocity_x.dart';



class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  _SearchFilterState createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  int categoryIndex = 0;
  int priceIndex = 0;
  int seatsIndex = 0;
  int engineIndex = 0;
  int fuelIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x33EF3D49), Colors.transparent],
              stops: [0.0, 0.2], // Adjust the stop values as needed
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
            ),
          ),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 60),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, PageTransition(
                          type: PageTransitionType.scale,
                          alignment: Alignment.bottomCenter,
                          child: MainScreen()));
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  //Icon(Icons.arrow_back),
                  SizedBox(width:10),
                  Text("Search Filter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              //SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomContainers(
                              width: 373,
                              //height: 165,
                              color: Colors.white,
                              borderRadius: 15,
                              borderColor: Color(0x22000000),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical:10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Category",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0x66000000)),),

                                  SizedBox(height:10),
                                    Wrap(
                                        alignment: WrapAlignment.start,
                                        spacing: 10.0,
                                        children: [
                                          FilterButton(
                                            text: 'All',
                                            index: 0,
                                            selectedIndex: categoryIndex,
                                            height: 40.0, // Customize the height as needed
                                            width: 57.0, // Customize the width as needed
                                            onPressed: () {
                                              setState(() {
                                                categoryIndex = 0;
                                              });
                                            },
                                          ),
                                          FilterButton(
                                            text: 'Hatchback',
                                            index: 1,
                                            selectedIndex: categoryIndex,
                                            height: 40.0, // Customize the height as needed
                                            width: 114.0, // Customize the width as needed
                                            onPressed: () {
                                              setState(() {
                                                categoryIndex = 1;
                                              });
                                            },
                                          ),

                                          FilterButton(
                                            text: 'SUV',
                                            index: 2,
                                            selectedIndex: categoryIndex,
                                            height: 40.0, // Customize the height as needed
                                            width: 69.0, // Customize the width as needed
                                            onPressed: () {
                                              setState(() {
                                                categoryIndex = 2;
                                              });
                                            },
                                          ),
                                          FilterButton(
                                            text: 'Sedan',
                                            index: 3,
                                            selectedIndex: categoryIndex,
                                            height: 40.0, // Customize the height as needed
                                            width: 84.0, // Customize the width as needed
                                            onPressed: () {
                                              setState(() {
                                                categoryIndex = 3;
                                              });
                                            },
                                          ),

                                          FilterButton(
                                            text: 'Electric',
                                            index: 4,
                                            selectedIndex: categoryIndex,
                                            height: 40.0, // Customize the height as needed
                                            width: 9.0, // Customize the width as needed
                                            onPressed: () {
                                              setState(() {
                                                categoryIndex = 4;
                                              });
                                            },
                                          ),

                                          FilterButton(
                                            text: 'Hybrid',
                                            index: 5,
                                            selectedIndex: categoryIndex,
                                            height: 40.0, // Customize the height as needed
                                            width: 86.0, // Customize the width as needed
                                            onPressed: () {
                                              setState(() {
                                                categoryIndex = 5;
                                              });
                                            },
                                          ),

                                        ]
                                    ),




                                    //FilterCategory(),
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    //   children: [
                                    //     FilterCategory(),
                                    //
                                    //   ],
                                    // ),

                                    SizedBox(height: 10,),

                                  ],
                                ),
                              ),

                            ),
                          ),

                      ],
                    ),

                    SizedBox(height:20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomContainers(
                            width: 373,
                            height: 120,
                            color: Colors.white,
                            borderRadius: 15,
                            borderColor: Color(0x22000000),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical:10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price Range",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0x66000000)),),


                                  SizedBox(height:10),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          child: Container(
                                                            width: 152,
                                                            height: 50,
                                                            decoration: BoxDecoration(
                                                              color: Color(0xffF3F3F3),
                                                              borderRadius: BorderRadius.circular(10.0),
                                                              border: Border.all(
                                                                color: Color(0x22000000), // You can change the border color here
                                                                width: 1.0, // You can adjust the border width
                                                              ),
                                                            ),
                                                            child: TextFormField(
                                                              decoration: InputDecoration(
                                                                border: InputBorder.none,
                                                                contentPadding: EdgeInsets.all(10.0),
                                                                hintText: 'Min',
                                                              ),
                                                            ),
                                                          ),
                                      ),

                                      Padding(
                                                  padding: EdgeInsets.only(left:5,right:5),
                                                  child: Container(
                                                    height:1,
                                                    width:9,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                      Expanded(
                                        child: Container(
                                          width: 152,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Color(0xffF3F3F3),
                                            borderRadius: BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Color(0x22000000), // You can change the border color here
                                              width: 1.0, // You can adjust the border width
                                            ),
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.all(10.0),
                                              hintText: 'Max',
                                            ),
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),

                                  // Row(
                                  //   children: [
                                  //     Column(
                                  //       mainAxisAlignment: MainAxisAlignment.start,
                                  //       crossAxisAlignment: CrossAxisAlignment.start,
                                  //       children: [
                                  //         Text("Min"),
                                  //           Container(
                                  //                 width: 152,
                                  //                 height: 50,
                                  //                 decoration: BoxDecoration(
                                  //                   color: Color(0xffF3F3F3),
                                  //                   borderRadius: BorderRadius.circular(10.0),
                                  //                   border: Border.all(
                                  //                     color: Color(0x22000000), // You can change the border color here
                                  //                     width: 1.0, // You can adjust the border width
                                  //                   ),
                                  //                 ),
                                  //                 child: TextFormField(
                                  //                   decoration: InputDecoration(
                                  //                     border: InputBorder.none,
                                  //                     contentPadding: EdgeInsets.all(10.0),
                                  //                     //hintText: 'Enter text here',
                                  //                   ),
                                  //                 ),
                                  //               ),
                                  //                 ],
                                  //     ),
                                  //
                                  //     Column(
                                  //       mainAxisAlignment: MainAxisAlignment.center,
                                  //       crossAxisAlignment: CrossAxisAlignment.center,
                                  //       children: [
                                  //         Center(child:
                                  //
                                  //         Padding(
                                  //           padding: EdgeInsets.only(left:5,right:5,top:14),
                                  //           child: Container(
                                  //             height:1,
                                  //             width:9,
                                  //             color: Colors.black,
                                  //           ),
                                  //         ),
                                  //         )
                                  //
                                  //       ],
                                  //     ),
                                  //
                                  //     Column(
                                  //       crossAxisAlignment: CrossAxisAlignment.start,
                                  //       children: [
                                  //         Text("Max"),
                                  //         Container(
                                  //           width: 152,
                                  //           height: 50,
                                  //           decoration: BoxDecoration(
                                  //             color: Color(0xffF3F3F3),
                                  //             borderRadius: BorderRadius.circular(10.0),
                                  //             border: Border.all(
                                  //               color: Color(0x22000000), // You can change the border color here
                                  //               width: 1.0, // You can adjust the border width
                                  //             ),
                                  //           ),
                                  //           child: TextFormField(
                                  //             decoration: InputDecoration(
                                  //               border: InputBorder.none,
                                  //               contentPadding: EdgeInsets.all(10.0),
                                  //               //hintText: 'Enter text here',
                                  //             ),
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //
                                  //   ],
                                  // ),

                                ],
                              ),
                            ),

                          ),
                        ),

                      ],
                    ),

                    SizedBox(height:20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomContainers(
                            width: 373,
                            //height: double.infinity,
                            color: Colors.white,
                            borderRadius: 15,
                            borderColor: Color(0x22000000),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical:10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Seats",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0x66000000)),),

                                  SizedBox(height:10),

                                  Wrap(
                                      alignment: WrapAlignment.start,
                                      spacing: 10.0,
                                      children: [
                                        FilterButton(
                                          text: '2',
                                          index: 0,
                                          selectedIndex: seatsIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 40.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              seatsIndex = 0;
                                            });
                                          },
                                        ),
                                        FilterButton(
                                          text: '3',
                                          index: 1,
                                          selectedIndex: seatsIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 40.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              seatsIndex = 1;
                                            });
                                          },
                                        ),

                                        FilterButton(
                                          text: '4',
                                          index: 2,
                                          selectedIndex: seatsIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 40.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              seatsIndex = 2;
                                            });
                                          },
                                        ),
                                        FilterButton(
                                          text: '5',
                                          index: 3,
                                          selectedIndex: seatsIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 40.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              seatsIndex = 3;
                                            });
                                          },
                                        ),

                                        FilterButton(
                                          text: '6',
                                          index: 4,
                                          selectedIndex: seatsIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 40.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              seatsIndex = 4;
                                            });
                                          },
                                        ),

                                      ]
                                  ),


                                ],
                              ),
                            ),

                          ),
                        ),

                      ],
                    ),

                    SizedBox(height:20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomContainers(
                            width: 373,
                            //height: 100,
                            color: Colors.white,
                            borderRadius: 15,
                            borderColor: Color(0x22000000),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical:10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Engine Type",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0x66000000)),),

                                  SizedBox(height:10),

                                  Wrap(
                                      alignment: WrapAlignment.start,
                                      spacing: 10.0,
                                      children: [
                                        FilterButton(
                                          text: 'Automatic',
                                          index: 0,
                                          selectedIndex: engineIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 109.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              engineIndex = 0;
                                            });
                                          },
                                        ),
                                        FilterButton(
                                          text: 'Manual',
                                          index: 1,
                                          selectedIndex: engineIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 90.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              engineIndex = 1;
                                            });
                                          },
                                        ),


                                      ]
                                  ),
                                ],
                              ),
                            ),

                          ),
                        ),

                      ],
                    ),

                    SizedBox(height:20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomContainers(
                            width: 373,
                            //height: 100,
                            color: Colors.white,
                            borderRadius: 15,
                            borderColor: Color(0x22000000),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical:10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Fuel",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0x66000000)),),

                                  SizedBox(height:10),

                                  Wrap(
                                      alignment: WrapAlignment.start,
                                      spacing: 10.0,
                                      children: [
                                        FilterButton(
                                          text: 'Petrol',
                                          index: 0,
                                          selectedIndex: fuelIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 109.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              fuelIndex = 0;
                                            });
                                          },
                                        ),
                                        FilterButton(
                                          text: 'Diesel',
                                          index: 1,
                                          selectedIndex: fuelIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 90.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              fuelIndex = 1;
                                            });
                                          },
                                        ),

                                        FilterButton(
                                          text: 'CNG',
                                          index: 2,
                                          selectedIndex: fuelIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 90.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              fuelIndex = 2;
                                            });
                                          },
                                        ),

                                        FilterButton(
                                          text: 'Electric',
                                          index: 3,
                                          selectedIndex: fuelIndex,
                                          height: 40.0, // Customize the height as needed
                                          width: 90.0, // Customize the width as needed
                                          onPressed: () {
                                            setState(() {
                                              fuelIndex = 3;
                                            });
                                          },
                                        ),


                                      ]
                                  ),
                                ],
                              ),
                            ),

                          ),
                        ),

                      ],
                    ),

                    SizedBox(height:20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Expanded(
                            child:Container(
                              width: 175,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: (){
                                  //Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: AdditionalInformation()));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffEF3D49),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                                child:Text("Save",style: TextStyle(color: Colors.white),),
                              ),
                            ),


                        ),


                        SizedBox(width:25),

                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }

}