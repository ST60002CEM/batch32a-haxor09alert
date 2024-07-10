import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/features/auth_screen/login_screen/presentation/view/loginscreen_view.dart';
import 'package:memorymate/widgets/responsive_text.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final _formKey = GlobalKey<FormState>();
//   bool _isPasswordHidden = true;
//   bool _isCPasswordHidden = true;
//   String? _password;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(kBackground),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.symmetric(
//                       horizontal: kHorizontalMargin, vertical: kVerticalMargin),
//                   child: Column(
//                     children: [
//                       Center(
//                         child: Image.asset(
//                           Assets.images.Logo,
//                           height: height * 0.2,
//                           width: height,
//                         ),
//                       ),
//                       ResponsiveText(
//                         "MemoryMate",
//                         fontSize: 32,
//                         fontFamily: 'SF Pro Rounded',
//                         fontWeight: FontWeight.w400,
//                         textColor: Color(0xFF614E7E),
//                       ),
//                       ResponsiveText(
//                         "Empowering Dementia Care",
//                         fontSize: 20,
//                         fontFamily: 'SF Pro',
//                         fontWeight: FontWeight.w400,
//                         textColor: Color(0xFF2F676A),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(
//                     horizontal: kHorizontalMargin,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ResponsiveText(
//                         "Register",
//                         fontSize: 24,
//                         fontFamily: 'Times',
//                         fontWeight: FontWeight.w400,
//                         textColor: Colors.black,
//                       ),
//                       ResponsiveText(
//                         "Login to your account and indulge in a personalized shopping experience tailored just for you.",
//                         fontSize: 12,
//                         textColor: Color(0xFF454C53),
//                         fontWeight: FontWeight.w400,
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(
//                       horizontal: kHorizontalMargin, vertical: kVerticalMargin),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ResponsiveText(
//                         'Name',
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "Test User 01",
//                           filled: true,
//                           fillColor: Color(0xFFFFFFF),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8)),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your name';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: kHorizontalMargin,
//                       ),
//                       ResponsiveText(
//                         'Phone No.',
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "9800000000",
//                           filled: true,
//                           fillColor: Color(0xFFFFFFF),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8)),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your phone number';
//                           }
//                           if (!RegExp(r'^\d{10}$').hasMatch(value)) {
//                             return 'Please enter a valid 10-digit phone number';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: kHorizontalMargin,
//                       ),
//                       ResponsiveText(
//                         'Email',
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "someone@gmail.com",
//                           filled: true,
//                           fillColor: Color(0xFFFFFFF),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8)),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your email';
//                           }
//                           if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
//                             return 'Please enter a valid email address';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: kHorizontalMargin,
//                       ),
//                       ResponsiveText(
//                         'Password',
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "********",
//                           filled: true,
//                           fillColor: Color(0xFFFFFFF),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8)),
//                           suffixIcon: IconButton(
//                             icon: Icon(_isPasswordHidden
//                                 ? Icons.visibility
//                                 : Icons.visibility_off),
//                             onPressed: () {
//                               setState(() {
//                                 _isPasswordHidden = !_isPasswordHidden;
//                               });
//                             },
//                           ),
//                         ),
//                         obscureText: _isPasswordHidden,
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your password';
//                           }
//                           _password = value;
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: kHorizontalMargin,
//                       ),
//                       ResponsiveText(
//                         'Confirm Password',
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "********",
//                           filled: true,
//                           fillColor: Color(0xFFFFFFF),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8)),
//                           suffixIcon: IconButton(
//                             icon: Icon(_isCPasswordHidden
//                                 ? Icons.visibility
//                                 : Icons.visibility_off),
//                             onPressed: () {
//                               setState(() {
//                                 _isCPasswordHidden = !_isCPasswordHidden;
//                               });
//                             },
//                           ),
//                         ),
//                         obscureText: _isCPasswordHidden,
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please confirm your password';
//                           }
//                           if (value != _password) {
//                             return 'Passwords do not match';
//                           }
//                           return null;
//                         },
//                       ),
//                       Center(
//                         child: Container(
//                           margin:
//                               EdgeInsets.symmetric(vertical: kVerticalMargin),
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               fixedSize: Size(width * 2, height * 0.07),
//                               backgroundColor: Color(0xFF614E7E),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),
//                             child: ResponsiveText(
//                               "REGISTER",
//                               fontSize: 24,
//                               fontFamily: 'Times',
//                               fontWeight: FontWeight.w400,
//                               textColor: Color(0xFFFCFCFC),
//                             ),
//                             onPressed: () {
//                               if (_formKey.currentState!.validate()) {
//                                 // Perform registration logic
//                                 Navigator.pop(context);
//                               }
//                             },
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin:
//                             EdgeInsets.symmetric(horizontal: kHorizontalMargin),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ResponsiveText(
//                               "Already have an account?",
//                               fontSize: 12,
//                               fontWeight: FontWeight.w400,
//                               textColor: Color(0xFF0A0C0E),
//                               textAlign: TextAlign.center,
//                             ),
//                             SizedBox(
//                               width: width * 0.02,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => LoginScreen()),
//                                 );
//                               },
//                               child: ResponsiveText(
//                                 "Login",
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w500,
//                                 textColor: Color(0xFF410D59),
//                                 textAlign: TextAlign.center,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart'; // Adjust according to your actual path
import 'package:memorymate/widgets/responsive_text.dart';
import 'package:memorymate/features/auth_screen/login_screen/presentation/view/loginscreen_view.dart'; // Adjust according to your actual path

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordHidden = true;
  bool _isCPasswordHidden = true;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  Future<void> registerUser() async {
    if (_formKey.currentState!.validate()) {
      var response = await http.post(
        Uri.parse('http://10.0.2.2:2500/user/register'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'fullname': _nameController.text,
          'email': _emailController.text,
          'password': _passwordController.text,
        }),
      );

      if (response.statusCode == 200) {
        var responseData = json.decode(response.body);
        if (responseData['status'] == 'success') {
          Navigator.pop(context);
        } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Registration Failed'),
              content: Text(responseData['message']),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            ),
          );
        }
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content:
                Text('Failed to register. Status code: ${response.statusCode}'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

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
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Image.asset(
                        Assets.images.Logo,
                        height: 100,
                        width: 100,
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
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
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
                        "Fill in your details to create your account.",
                        fontSize: 14,
                        textColor: Color(0xFF454C53),
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _phoneController,
                        decoration: InputDecoration(
                          labelText: "Phone No.",
                          border: OutlineInputBorder(),
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
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
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
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(),
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
                            return 'Please enter a password';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          border: OutlineInputBorder(),
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
                          if (value != _passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                          onPressed: registerUser,
                          child: Text("REGISTER"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF614E7E),
                              minimumSize: Size(double.infinity, 50)),
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
