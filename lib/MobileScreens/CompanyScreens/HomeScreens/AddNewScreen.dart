import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CustomDropdown.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/TextButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/AddressTextForm.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/ButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/AccountScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AddNewScreen extends StatefulWidget {
  const AddNewScreen({Key? key}) : super(key: key);

  @override
  _AddNewScreenState createState() => _AddNewScreenState();
}

class _AddNewScreenState extends State<AddNewScreen> {
  String? _engineValue = "Automatic"; // Define _selectedValue in the widget's state
  String? _fuelValue = "Electric";
  String? _seatsValue = "6";
  bool isAvailableEnabled = true;
  bool isOnRentEnabled = false;
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _carBrandController = TextEditingController();
  final TextEditingController _carModelNameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _depositAmountController = TextEditingController();
  final TextEditingController _kilometresController = TextEditingController();
  final TextEditingController _horsepowerController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Add New"),
        elevation:0,
        backgroundColor: Colors.transparent,
      ),
      body:
      SingleChildScrollView(child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //SizedBox(height: 60),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainers(
                  height:120,
                  width:120,
                  color: Color(0xffF2F2F2),
                  borderRadius: 15,
                  borderColor: Color(0xffC5C5C5),
                  child: Center(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_circle_outline,color: Color(0xffC5C5C5),),
                        Text("Add",style: TextStyle(color: Color(0xffC5C5C5)),),

                        SizedBox(height:10),

                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Car Pickup Location",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),

                              AddressTextFormWidget(hintText: "Ex: Bloc. 123, xyz address",controller: _locationController,borderColor: Color(0xffF2F2F2),prefixIcon: Icons.location_on_outlined,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Car brand",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),
                              AddressTextFormWidget(hintText: "Ex: Mercedes",controller: _carBrandController,),
                              SizedBox(height:15),

                              Text("Car Model Name",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),
                              AddressTextFormWidget(hintText: "Ex: GLA",controller: _carModelNameController,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height:15),

                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Price per day",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),

                              AddressTextFormWidget(hintText: "Ex: 32,000",controller: _priceController)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15,),

                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Deposit amount",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),

                              AddressTextFormWidget(hintText: "Ex: 3,000",controller: _depositAmountController)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height:15),

                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Kilometres",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),

                              AddressTextFormWidget(hintText: "Ex: 400KM",controller: _kilometresController)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height:15),

                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Engine type",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),

                              Row(
                                children: [
                                  Expanded(
                                    child:CustomDropdown(
                                      items: ['Automatic', 'Manual'],
                                      selectedValue: _engineValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _engineValue = value; // Update the selected value
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height:15),

                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Fuel Type",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),

                              Row(
                                children: [
                                  Expanded(
                                    child:CustomDropdown(
                                      items: ['Electric', 'Petrol','Diesel','CNG'],
                                      selectedValue: _fuelValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _fuelValue = value; // Update the selected value
                                        });
                                      },
                                    ),

                                  )
                                ],
                              ),


                              //AddressTextFormWidget(controller: _kilometresController)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height:15),

                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Horsepower",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),

                              AddressTextFormWidget(hintText: "Ex: 200",controller: _horsepowerController)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height:15),

                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Seats",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),

                              Row(
                                children: [
                                  Expanded(
                                    child:CustomDropdown(
                                      items: ['2', '3','4','5','6'],
                                      selectedValue: _seatsValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _seatsValue = value; // Update the selected value
                                        });
                                      },
                                    ),

                                  )
                                ],
                              ),


                              //AddressTextFormWidget(controller: _horsepowerController)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height:15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffC5C5C5),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Car status",style: TextStyle(color: Color(0x66000000),fontSize: 13),),
                              SizedBox(height:10),

                              // Row(
                              //   children: [
                              //     ToggleButton(
                              //       button1Text: "Button 1",
                              //       button2Text: "Button 2",
                              //     )
                              //
                              //   ],
                              // ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child:
                                  ElevatedButton(
                                    onPressed: isOnRentEnabled
                                        ? () {
                                      setState(() {
                                        isAvailableEnabled = true;
                                        isOnRentEnabled = false;
                                      });
                                    }
                                        : null,
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                        isAvailableEnabled ? Color(0xffF2F2F2) : Color(0xffF2F2F2),
                                      ),
                                      elevation: MaterialStateProperty.all(0.0),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: isAvailableEnabled ? Colors.red : Colors.transparent,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Available",
                                      style: TextStyle(
                                        color: isAvailableEnabled ? Color(0xffEF3D49) : Colors.black, // Set the text color here
                                      ),
                                    ),
                                  ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(child:
                                  ElevatedButton(
                                    onPressed: isOnRentEnabled
                                        ? null
                                        : () {
                                      setState(() {
                                        isAvailableEnabled = false; // Disable "Available" button
                                        isOnRentEnabled = true; // Enable "On Rent" button
                                      });
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                        isOnRentEnabled ? Color(0xffF2F2F2) : Color(0xffF2F2F2),
                                      ),
                                      elevation: MaterialStateProperty.all(0.0),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: isOnRentEnabled ? Colors.red : Colors.transparent,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "On Rent",
                                      style: TextStyle(
                                        color: isOnRentEnabled ? Color(0xffEF3D49) : Colors.black, // Set the text color here
                                      ),
                                    ),
                                  ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height:15),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 20,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: MainScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffEF3D49),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height:10),

              ],
            ),
          ),
        ],
      ),
      ),

    );
  }
}