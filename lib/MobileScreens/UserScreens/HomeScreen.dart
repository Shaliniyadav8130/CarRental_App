import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: 
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: "hello".text.make(),
                    ).box.width(context.screenWidth*.3).height(context.screenHeight*.15).margin(EdgeInsets.all(10)).color(Colors.black12).roundedFull.make(),

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
