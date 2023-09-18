import 'package:carrental/MobileScreens/MainUserScreens/AdditionalInformationWidgets/ProfileImage.dart';
import 'package:carrental/MobileScreens/MainUserScreens/MainScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/AddressTextForm.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/TextFormFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({
    Key? key,
  }) : super(key: key);

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      //resizeToAvoidBottomInset: true,
      body:Stack(
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
          SingleChildScrollView(
            child:Form(
              child:Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child:Column(
                  children: [
                    SizedBox(height:80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Additional Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Skip",style: TextStyle(fontSize: 12),)
                      ],
                    ),

                    SizedBox(height:40),

                    ProfileAvatarWithPencilIcon(
                      assetPath: 'assets/images/profile.jpg', // Replace with your asset path
                      size: 110.0,
                      borderWidth: 5.0,
                    ),
                    SizedBox(height:50),

                    TextFormFieldWidget(
                      controller: _nameController,
                      hintText: 'Name',
                    ),

                    SizedBox(height:15),

                    TextFormFieldWidget(
                      controller: _mobileController,
                      hintText: 'Mobile',
                    ),

                    SizedBox(height:15),

                    TextFormFieldWidget(
                      controller: _emailController,
                      hintText: 'Email',
                    ),

                    SizedBox(height:15),
                    AddressTextFormWidget(
                      controller: _addressController,
                      maxLines: 4,
                      hintText: 'Address',
                      borderColor: Color(0xffC5C5C5),
                    ),

                    SizedBox(height:40),
                    Row(
                      children: [
                        Expanded(
                          child:ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: MainScreen()));

                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffEF3D49),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            child: Text('Save',style: TextStyle(color: Colors.white),),
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

    );
  }
}
