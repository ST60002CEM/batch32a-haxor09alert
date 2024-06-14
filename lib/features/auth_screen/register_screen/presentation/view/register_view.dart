import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/features/auth_screen/login_screen/presentation/view/loginscreen_view.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordHidden = true;
  bool _isCPasswordHidden = true;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackground),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w400,
                        textColor: Color(0xFF2F676A),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: kHorizontalMargin,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveText(
                        "Register",
                        fontSize: 24,
                        fontFamily: 'Times',
                        fontWeight: FontWeight.w400,
                        textColor: Colors.black,
                      ),
                      ResponsiveText(
                        "Login to your account and indulge in a personalized shopping experience tailored just for you.",
                        fontSize: 12,
                        textColor: Color(0xFF454C53),
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
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
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Test User 01",
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: kHorizontalMargin,
                      ),
                      ResponsiveText(
                        'Phone No.',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "9800000000",
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                            return 'Please enter a valid 10-digit phone number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: kHorizontalMargin,
                      ),
                      ResponsiveText(
                        'Email',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "someone@gmail.com",
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: kHorizontalMargin,
                      ),
                      ResponsiveText(
                        'Password',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          _password = value;
                          return null;
                        },
                      ),
                      SizedBox(
                        height: kHorizontalMargin,
                      ),
                      ResponsiveText(
                        'Confirm Password',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != _password) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      Center(
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: kVerticalMargin),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(width * 2, height * 0.07),
                              backgroundColor: Color(0xFF614E7E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: ResponsiveText(
                              "REGISTER",
                              fontSize: 24,
                              fontFamily: 'Times',
                              fontWeight: FontWeight.w400,
                              textColor: Color(0xFFFCFCFC),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Perform registration logic
                                Navigator.pop(context);
                              }
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
      ),
    );
  }
}
