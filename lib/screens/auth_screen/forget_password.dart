import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/constants/string_constants.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(kBackground),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(kBackground),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: kHorizontalMargin, vertical: kVerticalMargin),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveText(
                  "FORGET PASSWORD",
                  fontFamily: 'Times',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                ResponsiveText(
                  kForgetPassword,
                  fontSize: 12,
                  textColor: Color.fromARGB(255, 116, 116, 116),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: kHorizontalMargin, vertical: kVerticalMargin / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email/Phone.no",
                      filled: true,
                      fillColor: const Color(0xffFFFFFF),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: kHorizontalMargin, vertical: kVerticalMargin),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(width * 2, height * 0.07),
                  backgroundColor: const Color(0xff8219B3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {
                // Add your onPressed functionality here
              },
              child: const ResponsiveText(
                "SUBMIT",
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
