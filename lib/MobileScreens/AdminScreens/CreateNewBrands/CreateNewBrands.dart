import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/CustomDropdown.dart';
import 'package:carrental/MobileScreens/CompanyScreens/HomeScreens/HomeWIdget/TextButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/AddressTextForm.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/ButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/AccountScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CreateNewBrandsScreen extends StatefulWidget {

  const CreateNewBrandsScreen({Key? key}) : super(key: key);
  @override
  _CreateNewBrandsScreenState createState() => _CreateNewBrandsScreenState();
}

class _CreateNewBrandsScreenState extends State<CreateNewBrandsScreen> {
  final TextEditingController _carBrandController = TextEditingController();
  final TextEditingController _carModelNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Create new Brand Ads"),
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
                Row(
                  children: [
                    Expanded(
                      child: CustomContainers(
                        //height:120,
                        width:116,
                        color: Colors.white,
                        borderRadius: 25,
                        borderColor: Color(0xffF2F2F2),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dealers Name",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),
                              AddressTextFormWidget(hintText: "Ex: Johnson",controller: _carBrandController,),
                              SizedBox(height:15),

                              Text("Dealer's phone number",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),
                              AddressTextFormWidget(hintText: "Ex: +91 9999 999 999",controller: _carModelNameController,),
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

                              Text("Add Ad poster",style: TextStyle(color: Color(0x66000000),fontSize: 13),),

                              SizedBox(height:10),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: (){},
                                      child: CustomContainers(
                                        borderRadius: 15,
                                        //borderColor: Color(0xffEF3D49),
                                        height:49,
                                        width: 353,
                                        color: Color(0xffF2F2F2),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.add,color: Color(0xffEF3D49),),
                                              SizedBox(
                                                width:5,
                                              ),
                                              Text("add poster photo or gif",style: TextStyle(color: Color(0xffEF3D49),fontSize: 15),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                  )
                                ],
                              ),

                              SizedBox(height:15),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ad 1 • Size 00x00",style: TextStyle(fontSize: 12),),
                                  Text("Delete",style: TextStyle(fontSize: 12,color: Color(0xffEF3D49)),)
                                ],
                              ),

                              SizedBox(height:10),

                              Row(
                                children: [
                                  Expanded(
                                    child:CustomContainers(
                                      width: 353,
                                      height:104,
                                      borderRadius: 15,
                                      color: Color(0xffD9D9D9),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height:15),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ad 2 • Size 00x00",style: TextStyle(fontSize: 12),),
                                  Text("Delete",style: TextStyle(fontSize: 12,color: Color(0xffEF3D49)),)
                                ],
                              ),

                              SizedBox(height:10),

                              Row(
                                children: [
                                  Expanded(
                                    child:CustomContainers(
                                      width: 353,
                                      height:132,
                                      borderRadius: 15,
                                      color: Color(0xffD9D9D9),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height:15),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ad 3 • Size 00x00",style: TextStyle(fontSize: 12),),
                                  Text("Delete",style: TextStyle(fontSize: 12,color: Color(0xffEF3D49)),)
                                ],
                              ),

                              SizedBox(height:10),

                              Row(
                                children: [
                                  Expanded(
                                    child:CustomContainers(
                                      width: 353,
                                      height:410,
                                      borderRadius: 15,
                                      color: Color(0xffD9D9D9),
                                    ),
                                  ),
                                ],
                              ),

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