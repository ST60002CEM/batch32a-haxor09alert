import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/screens/auth_screen/forget_password.dart';
import 'package:memorymate/screens/auth_screen/signup_screen.dart';
import 'package:memorymate/screens/home_screens/homepage.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordHidden = true; // Add this line to declare the variable

  @override
  Widget build(BuildContext context) {
    // Existing code remains unchanged
    return Scaffold(
      backgroundColor: Color(kBackground),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kHorizontalMargin * 0.5,
                    vertical: kVerticalMargin),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        Assets.images.Logo,
                        height: height * 0.2,
                        width: height,
                      ),
                    ),
                    ResponsiveText(
                      "MemoryMate",
                      fontSize: 32,
                      fontFamily: 'SF Pro Rounded',
                      fontWeight: FontWeight.w400,
                      textColor: Color(0xFF614E7E),
                    ),
                    ResponsiveText(
                      "Empowering Dementia Care",
                      fontSize: 20,
                      fontFamily: 'Helvetic',
                      fontWeight: FontWeight.w400,
                      textColor: Color(0xFF2F676A),
                    ),
                  ],
                ),
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(
              //     horizontal: kHorizontalMargin,
              //   ),
              //   // height: 10,
              //   // color: Colors.amber,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              // ResponsiveText(
              //   "LOGIN",
              //   fontSize: 24,
              //   fontFamily: 'Times',
              //   fontWeight: FontWeight.w400,
              //   textColor: Colors.black,
              // ),
              //       ResponsiveText(
              //         "Login to your account and indulge in a personalized shopping experience tailored just for you.",
              //         fontSize: 12,
              //         textColor: Color(0xFF454C53),
              //         fontWeight: FontWeight.w400,
              //       )
              //     ],
              //   ),
              // ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveText(
                      'Email',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          // labelText: "Email / Phone no.",
                          hintText: "someone@gmail.com",
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(
                      height: kHorizontalMargin,
                    ),
                    ResponsiveText(
                      'Password',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    TextField(
                      // controller: _passwordConfirmController,
                      decoration: InputDecoration(
                        // labelText: 'Password',
                        hintText: "********",
                        filled: true,
                        fillColor: Color(0xFFFFFFF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordHidden
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isPasswordHidden = !_isPasswordHidden;
                            });
                          },
                        ),
                      ),
                      obscureText: _isPasswordHidden,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: kHorizontalMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the login page when "Login" is clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()),
                        );
                      },
                      child: ResponsiveText(
                        "Forget Password?",
                        fontSize: 14,
                        textColor: Color(0xFF0A0C0E),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(width * 2, height * 0.07),
                        backgroundColor: Color(0xFF614E7E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: ResponsiveText(
                      "LOGIN",
                      fontSize: 24,
                      fontFamily: 'Times',
                      fontWeight: FontWeight.w400,
                      textColor: Color(0xFFFCFCFC),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ResponsiveText(
                      "Don’t have an account?",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      textColor: Color(0xFF0A0C0E),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the login page when "Login" is clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()),
                        );
                      },
                      child: ResponsiveText(
                        "Register",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        textColor: Color(0xFF410D59),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
