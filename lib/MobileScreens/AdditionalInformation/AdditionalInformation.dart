import 'package:carrental/MobileScreens/UserRegistration/widgets/TextFormFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      resizeToAvoidBottomInset: true,
      body: Form(
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

          SizedBox(height:20),

          Center(
            child:Container(
              height:112,
              width:112,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Make the container circular
                //color: Color(0xffEF3D49), // Set the background color
                border: Border.all(
                  color: Color(0xffEF3D49), // Set the border color
                  width: 5, // Set the border width
                ),
              ),
            ),
          ),

          SizedBox(height:50),

          TextFormFieldWidget(
                controller: _nameController,
                hintText: 'Name',
              ),

          SizedBox(height:10),

          TextFormFieldWidget(
            controller: _mobileController,
            hintText: 'Mobile',
          ),

          SizedBox(height:10),

          TextFormFieldWidget(
            controller: _emailController,
            hintText: 'Email',
          ),

          SizedBox(height:10),

          TextFormFieldWidget(
            controller: _addressController,
            maxLines: 4,
            hintText: 'Address',
          ),

          Spacer(), // Add this spacer to push the button to the bottom
          ElevatedButton(
            onPressed: () {
              // Add your save button logic here
            },
            child: Text('Save'),
          ),
      ],
      ),
      ),
      ),
    );
  }
}
