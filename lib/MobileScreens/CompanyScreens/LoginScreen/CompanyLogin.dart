import 'package:carrental/MobileScreens/CompanyScreens/CompanyAdditionalInformation/CompanyAdditionalInfo.dart';
import 'package:carrental/MobileScreens/CompanyScreens/Registration/Signup.dart';
import 'package:carrental/MobileScreens/MainUserScreens/OnboardScreens/OnboardScreen1.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/Signup.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/ButtonWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/OrWidget.dart';
import 'package:carrental/MobileScreens/MainUserScreens/UserRegistration/widgets/TextFormFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

class CompanyLoginPage extends StatefulWidget {
  const CompanyLoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CompanyLoginPage> createState() => _CompanyLoginState();
}

class _CompanyLoginState extends State<CompanyLoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_updateButtonState);
    _passwordController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    final email = _emailController.text;
    final password = _passwordController.text;
    setState(() {
      _isButtonEnabled = email.isNotEmpty && password.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height:40),
                Text(
                  "Let's Go",
                  style: TextStyle(
                    color: Color(0xffEF3D49),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            Text(
              "For Dealer",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                //fontWeight: FontWeight.bold,
              ),
            ),


            SizedBox(height: 40),

            Row(
              children: [
                Text(
                  "Log in to your Dealer account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            SizedBox(height: 18),
            TextFormFieldWidget(
                controller: _emailController,
                hintText: "enter email"
            ),

            SizedBox(height: 18),

            TextFormFieldWidget(
              controller: _passwordController,
              hintText: 'enter password',
              obscureText: true,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){},
                    child: Text("Forgot Password?",style: TextStyle(color: Color(0xffEF3D49),fontSize: 14),)
                )
              ],
            ),

            //SizedBox(height:10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Comforta',
                        ),
                      ),
                      onPressed: _isButtonEnabled ? () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CompanyAdditionalInfo()));
                      } : null,
                      style: ButtonStyle(
                        backgroundColor: _isButtonEnabled
                            ? MaterialStateProperty.all<Color>(Color(0xffEF3D49))
                            : MaterialStateProperty.all<Color>(Color(0x66EF3D49)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            OrWidget(),

            SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    text: 'Continue with Google',
                    onPressed: () {},
                    backgroundColor: Color(0xffF2F2F2),
                    iconImagePath: 'assets/images/Google.png',
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    text: 'Login with Facebook',
                    onPressed: () {},
                    backgroundColor: Color(0xffF2F2F2),
                    iconImagePath: 'assets/images/Facebook.png',
                  ),
                ),
              ],
            ),

            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Become a new dealer?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CompanySignup()));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffEF3D49),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Rent/sell a car?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.bottomCenter, child: SignupPage()));

                  },
                  child: Text(
                    "view as buyer",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffEF3D49),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
