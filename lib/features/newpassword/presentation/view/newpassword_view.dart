import 'package:flutter/material.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/features/login_screen/presentation/view/loginscreen_view.dart';
import 'package:memorymate/widgets/responsive_text.dart';

import '../../../../core/constants/color_constants.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _isPasswordHidden = true;
  bool _isCPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackground),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded),
        backgroundColor: Color(kBackground),
        title: ResponsiveText(
          "Change Password",
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/2),
            child: TextField(
              // controller: _passwordConfirmController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: "********",
                filled: true,
                fillColor: Color(0xFFF6E9FC),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                suffixIcon: IconButton(
                  icon: Icon(_isPasswordHidden ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isPasswordHidden = !_isPasswordHidden;
                    });
                  },
                ),
              ),
              obscureText: _isPasswordHidden,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/2),
            child: TextField(
              // controller: _passwordConfirmController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: "********",
                filled: true,
                fillColor: Color(0xFFF6E9FC),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                suffixIcon: IconButton(
                  icon: Icon(_isCPasswordHidden ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isCPasswordHidden = !_isCPasswordHidden;
                    });
                  },
                ),
              ),
              obscureText: _isCPasswordHidden,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width*2, height*0.07),
                backgroundColor: Color(0xff8219B3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: () {  
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
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