import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackground),
      // appBar: AppBar(
      //   title: ResponsiveText("Login Screen"),
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: kHorizontalMargin, vertical: kVerticalMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.images.Logo),
                // Center(
                //   child: ResponsiveText(
                //     'MemoryMate',
                //     fontSize: 24,
                //     fontWeight: FontWeight.w700,
                //   ),
                // ),
                ResponsiveText(
                  'E-mail/Phone Number',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Email/Phone Number'),
                ),
                SizedBox(
                  height: kVerticalMargin,
                ),
                ResponsiveText(
                  'Password',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: '*********'),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ResponsiveText(
                      'Forget Password?',
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                SizedBox(
                  height: kVerticalMargin,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      backgroundColor: Colors.purpleAccent, // Example padding
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Example border radius
                      ),
                      elevation: 5, // Example elevation
                      // primary: Colors.blue, // Example button background color
                    ),
                    child: ResponsiveText(
                      "Login",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      textColor: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
