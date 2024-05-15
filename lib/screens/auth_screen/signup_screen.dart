import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/screens/auth_screen/login_screen.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isPasswordHidden = true;
  bool _isCPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackground),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kHorizontalMargin, vertical: kVerticalMargin),
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
              //       ResponsiveText(
              //         "Register",
              //         fontSize: 24,
              //         fontFamily: 'Times',
              //         fontWeight: FontWeight.w400,
              //         textColor: Colors.black,
              //       ),
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
                      'Name',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          // labelText: "Name",
                          hintText: "Test User 01",
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(
                      height: kHorizontalMargin,
                    ),
                    ResponsiveText(
                      'Phone No.',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          // labelText: "Phone no.",
                          hintText: "9800000000",
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(
                      height: kHorizontalMargin,
                    ),
                    ResponsiveText(
                      'Email',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          // labelText: "Email",
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
                    SizedBox(
                      height: kHorizontalMargin,
                    ),
                    ResponsiveText(
                      'Confirm Password',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    TextField(
                      // controller: _passwordConfirmController,
                      decoration: InputDecoration(
                        // labelText: 'Confirm Password',
                        hintText: "********",
                        filled: true,
                        fillColor: Color(0xFFFFFFF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        suffixIcon: IconButton(
                          icon: Icon(_isCPasswordHidden
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isCPasswordHidden = !_isCPasswordHidden;
                            });
                          },
                        ),
                      ),
                      obscureText: _isCPasswordHidden,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            // horizontal: kHorizontalMargin,
                            vertical: kVerticalMargin),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(width * 2, height * 0.07),
                              backgroundColor: Color(0xFF614E7E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: ResponsiveText(
                            "REGISTER",
                            fontSize: 24,
                            fontFamily: 'Times',
                            fontWeight: FontWeight.w400,
                            textColor: Color(0xFFFCFCFC),
                          ),
                          onPressed: () {
                            Navigator.pop(
                              context,
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ResponsiveText(
                            "Already have an account?",
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
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: ResponsiveText(
                              "Login",
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
            ],
          ),
        ),
      ),
    );
  }
}
