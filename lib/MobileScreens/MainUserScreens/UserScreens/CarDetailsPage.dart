import 'package:carrental/MobileScreens/MainUserScreens/MainScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/AccountScreen.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/CustomContainer.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserScreens/HomeWidget/FacilityWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/images.dart';
import 'package:carrental/MobileScreens/MainUserScreens/constants/lists.dart';
import 'package:carrental/MobileScreens/MainUserScreens/customWidgets/CustomContainer.dart';
import 'package:velocity_x/velocity_x.dart';



class CarDetailsPage extends StatefulWidget {
  const CarDetailsPage({Key? key}) : super(key: key);

  @override
  _CarDetailsPageState createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage> {
  int selectedOption = 0; // Variable to track the selected option

  void _handleOptionChange(int value) {
    setState(() {
      selectedOption = value;
    });
  }

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
                    //SizedBox(width:10),
                    //Text("Search Filter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                    Spacer(),
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.black, // Change the color here
                        BlendMode.srcIn,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/home/HeartIcon.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(width: 20)

                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BMW",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      Text("Model name here",style: TextStyle(fontSize: 18),),

                      SizedBox(height:20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rs.34,000 /per day",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("Rs.3,000 Deposit 400Km",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0x66000000)),),
                        ],
                      ),

                      SizedBox(height:20),
                      VxSwiper.builder(
                          aspectRatio: 16/9,
                          autoPlay: true,
                          height: 200,
                          enlargeCenterPage: false,
                          viewportFraction: 1.0,
                          itemCount: 2, itemBuilder:(context,index){
                        return Container(
                          width: context.screenWidth,
                          height:300,
                          child: Image.asset(carImage,fit: BoxFit.cover,),
                          // You can adjust the fit as needed
                        ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                      }),

                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FacilityWidget(imagePath: "assets/images/home/Auto.png", text: "Auto"),
                          FacilityWidget(imagePath: "assets/images/home/Seats.png", text: "6 seat"),
                          FacilityWidget(imagePath: "assets/images/home/hp.png", text: "200hp"),
                          FacilityWidget(imagePath: "assets/images/home/Petrol.png", text: "Petrol")
                        ],
                      ),

                      SizedBox(height:20),

                      Row(
                        children: [
                          Expanded(
                            child: CustomContainers(
                              width: 373,
                              height: 51,
                              color: Color(0xffFAFAFA),
                              borderRadius: 15,
                              borderColor: Color(0x22000000),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Delivery Possible?",style: TextStyle(fontSize: 15,),),
                                    SizedBox(width:10),
                                    Text("Yes",style: TextStyle(fontSize: 15,color: Color(0xff6CD248)),),
                                  ],
                                ),
                              ),

                            ),

                          )
                        ],
                      ),

                      SizedBox(height:10),

                      Row(
                        children: [
                          Expanded(
                            child: CustomContainers(
                              width: 373,
                              height: 51,
                              color: Color(0xffFAFAFA),
                              borderRadius: 15,
                              borderColor: Color(0x22000000),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Insurance included?",style: TextStyle(fontSize: 15,),),
                                    SizedBox(width:10),
                                    Text("No",style: TextStyle(fontSize: 15,color: Color(0xffEF3D49)),),
                                  ],
                                ),
                              ),

                            ),

                          )
                        ],
                      ),

                      SizedBox(height:10),

                      Container(
                        padding: EdgeInsets.all(10),
                        width: context.screenWidth*.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Payment accepted in cash".text.gray400.size(16).make(),
                            "💰 Cash, 💳 Credit/Debit cards & 🪙 Crypto".text.black.size(16).make()
                          ],
                        ),
                      ).box.rounded.border(color: Vx.gray300).color(Color(0xffFAFAFA)).make(),
                      10.heightBox,

                      Row(
                        children: [
                          Expanded(
                            child: CustomContainers(
                              width: 373,
                              height: 166,
                              color: Color(0xffFAFAFA),
                              borderRadius: 15,
                              borderColor: Color(0x22000000),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical:10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rented by",style: TextStyle(fontSize: 14,),),
                                    SizedBox(width:17),

                                    Row(
                                      children: [
                                        Container(
                                          height:50,
                                          width:50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16.0),
                                          ),
                                          child: Image.asset("assets/images/home/Men.png"),
                                        ),
                                        SizedBox(width:5),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Johnson",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                            SizedBox(height:5),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                SvgPicture.asset(verifiedTag),
                                                3.widthBox,
                                                SvgPicture.asset(premiumTag),

                                              ],
                                            ),

                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height:10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 175,
                                            height: 50,
                                            child: ElevatedButton(
                                              onPressed: (){
                                                //Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: AdditionalInformation()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffEF3D49),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(16.0),
                                                ),
                                              ),
                                              child:Text("Book a Call",style: TextStyle(color: Colors.white),),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ),

                          ),
                          SizedBox(height:10),
                        ],
                      ),


                    ],
                  ),
                ),
                SizedBox(height:10),
              ],
            ),
          )
        ),

    );
  }

}