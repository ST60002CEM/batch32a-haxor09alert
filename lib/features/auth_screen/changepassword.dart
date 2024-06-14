
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/features/auth_screen/forget_password.dart';
import 'package:memorymate/features/auth_screen/login_screen/presentation/view/loginscreen_view.dart';
import 'package:memorymate/widgets/responsive_text.dart';

import '../../core/constants/color_constants.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(kBackground),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_rounded),
        backgroundColor: const Color(kBackground),
        title: const ResponsiveText(
          "Change Password",
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ResponsiveText(
                  "Old Password",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    // hintText: "Alekh Chaudhary",
                    filled: true,
                    fillColor: const Color(0xffF6E9FC),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ResponsiveText(
                  "New Password",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    // hintText: "9800000000",
                    filled: true,
                    fillColor: const Color(0xffF6E9FC),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ResponsiveText(
                  "Confirm Password",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    // hintText: "",
                    filled: true,
                    fillColor: const Color(0xffF6E9FC),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
                SizedBox(height: kVerticalMargin/2,),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the login page when "Login" is clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ForgetPassword()),
                        );
                      },
                      child: const ResponsiveText(
                        "Forget Password?",
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width*2, height*0.07),
                backgroundColor: const Color(0xff8219B3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: () {  
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            child: const ResponsiveText(
              "Update",
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: 'Times',
              textColor: Color(0xffFCFCFC),
              ),
            ),
          ),
        ],
      ),
    );
  }
}