// import 'package:flutter/material.dart';
// import 'package:memorymate/core/constants/color_constants.dart';
// import 'package:memorymate/core/utils/asset_provider.dart';
// import 'package:memorymate/core/utils/util.dart';
// import 'package:memorymate/features/forgetpassword/presentation/view/forget_password.dart';
// import 'package:memorymate/features/auth_screen/login_screen/widgets/login_header.dart';
// import 'package:memorymate/features/auth_screen/register_screen/presentation/view/register_view.dart';
import 'package:memorymate/features/home_screens/presentation/view/home_view.dart';
// import 'package:memorymate/widgets/responsive_text.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool _isPasswordHidden = true;
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: const Color(kBackground),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const LoginHeader(),
//                 Container(
//                   margin: EdgeInsets.symmetric(
//                     horizontal: kHorizontalMargin,
//                   ),
//                   child: const Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ResponsiveText(
//                         "LOGIN",
//                         fontSize: 24,
//                         fontFamily: 'Times',
//                         fontWeight: FontWeight.w400,
//                         textColor: Colors.black,
//                       ),
//                       ResponsiveText(
//                         "Login to your account and make enhance you memory.",
//                         fontSize: 12,
//                         textColor: Color(0xFF454C53),
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(
//                     horizontal: kHorizontalMargin,
//                     vertical: kVerticalMargin,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const ResponsiveText(
//                         'Email',
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       TextFormField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           hintText: "someone@gmail.com",
//                           filled: true,
//                           fillColor: const Color(0x0fffffff),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
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
//                       SizedBox(height: kHorizontalMargin),
//                       const ResponsiveText(
//                         'Password',
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       TextFormField(
//                         controller: _passwordController,
//                         decoration: InputDecoration(
//                           hintText: "********",
//                           filled: true,
//                           fillColor: const Color(0x0fffffff),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               _isPasswordHidden
//                                   ? Icons.visibility
//                                   : Icons.visibility_off,
//                             ),
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
//                           if (value.length < 6) {
//                             return 'Password must be at least 6 characters long';
//                           }
//                           return null;
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(
//                     horizontal: kHorizontalMargin,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const ForgetPassword(),
//                             ),
//                           );
//                         },
//                         child: const ResponsiveText(
//                           "Forget Password?",
//                           fontSize: 14,
//                           textColor: Color(0xFF0A0C0E),
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Center(
//                   child: Container(
//                     margin: EdgeInsets.symmetric(
//                       horizontal: kHorizontalMargin,
//                       vertical: kVerticalMargin,
//                     ),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         fixedSize: Size(width * 2, height * 0.07),
//                         backgroundColor: const Color(0xFF614E7E),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: const ResponsiveText(
//                         "LOGIN",
//                         fontSize: 24,
//                         fontFamily: 'Times',
//                         fontWeight: FontWeight.w400,
//                         textColor: Color(0xFFFCFCFC),
//                       ),
//                       onPressed: () {
//                         if (_formKey.currentState?.validate() ?? false) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const MyHomePage(),
//                             ),
//                           );
//                         }
//                       },
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const ResponsiveText(
//                         "Don’t have an account?",
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         textColor: Color(0xFF0A0C0E),
//                         textAlign: TextAlign.center,
//                       ),
//                       SizedBox(width: width * 0.02),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const SignupScreen(),
//                             ),
//                           );
//                         },
//                         child: const ResponsiveText(
//                           "Register",
//                           fontSize: 12,
//                           fontWeight: FontWeight.w500,
//                           textColor: Color(0xFF410D59),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: kVerticalMargin,
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(
//                       horizontal: kHorizontalMargin, vertical: kVerticalMargin),
//                   child: Center(
//                     child: Column(
//                       children: [
//                         ElevatedButton.icon(
//                           onPressed: () {
//                             // Implement Google sign-in logic here
//                           },
//                           style: ElevatedButton.styleFrom(
//                             fixedSize: Size(width * 2, height * 0.07),
//                             backgroundColor: Colors.grey.shade300,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           icon: Image.asset(
//                             Assets.images.GoogleLogo,
//                             height: 30,
//                           ), // Add Google icon here
//                           label: const ResponsiveText(
//                             'Sign with Google',
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         SizedBox(height: kVerticalMargin),
//                         ElevatedButton.icon(
//                           onPressed: () async {
//                             // final LoginResult result =
//                             //     await FacebookAuth.instance.login();
//                             // Handle Facebook login result here
//                           },
//                           style: ElevatedButton.styleFrom(
//                             fixedSize: Size(width * 2, height * 0.07),
//                             backgroundColor: Colors.grey.shade300,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           icon: Image.asset(
//                             Assets.images.FacebookLogo,
//                             height: 30,
//                           ), // Add Facebook icon here
//                           label: const ResponsiveText(
//                             'Sign with Facebook',
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         SizedBox(height: kVerticalMargin),
//                         ElevatedButton.icon(
//                           onPressed: () {
//                             // Implement Apple sign-in logic here
//                           },
//                           style: ElevatedButton.styleFrom(
//                             fixedSize: Size(width * 2, height * 0.07),
//                             backgroundColor: Colors.grey.shade300,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           // icon: Icon(Icons.apple), // Add Apple icon here
//                           icon: Image.asset(
//                             Assets.images.AppleLogo,
//                             height: 30,
//                           ),
//                           label: const ResponsiveText(
//                             'Sign with Apple',
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
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
import 'package:memorymate/widgets/responsive_text.dart';
import 'package:memorymate/features/auth_screen/login_screen/widgets/login_header.dart';
import 'package:memorymate/features/auth_screen/register_screen/presentation/view/register_view.dart';
import 'package:memorymate/features/forgetpassword/presentation/view/forget_password.dart';
// import 'package:memorymate/features/home_screens/presentation/view/home_view.dart'; // Make sure to use correct paths

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordHidden = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> loginUser() async {
    if (_formKey.currentState!.validate()) {
      try {
        var response = await http.post(
          Uri.parse(
              'http://10.0.2.2:2500/user/login'), // Change to 10.0.2.2 for Android Emulator if running locally
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'email': _emailController.text,
            'password': _passwordController.text,
          }),
        );

        if (response.statusCode == 200) {
          var responseData = json.decode(response.body);
          if (responseData['success']) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          } else {
            showErrorDialog(responseData['message']);
          }
        } else {
          showErrorDialog(
              'Error: Failed to log in with status code ${response.statusCode}.');
        }
      } catch (e) {
        showErrorDialog('Network Error: ${e.toString()}');
      }
    }
  }

  void showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Login Error'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(kBackground),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginHeader(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ResponsiveText(
                        "LOGIN",
                        fontSize: 24,
                        fontFamily: 'Times',
                        fontWeight: FontWeight.w400,
                        textColor: Colors.black,
                      ),
                      ResponsiveText(
                        "Login to your account and make enhance your memory.",
                        fontSize: 12,
                        textColor: Color(0xFF454C53),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ResponsiveText(
                        'Email',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "someone@gmail.com",
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
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
                      const ResponsiveText(
                        'Password',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: "********",
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
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
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgetPassword(),
                            ),
                          );
                        },
                        child: const ResponsiveText(
                          "Forget Password?",
                          fontSize: 14,
                          textColor: Color(0xFF0A0C0E),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 40),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(width * 0.8, height * 0.07),
                            backgroundColor: const Color(0xFF614E7E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const ResponsiveText(
                            "LOGIN",
                            fontSize: 24,
                            fontFamily: 'Times',
                            fontWeight: FontWeight.w400,
                            textColor: Color(0xFFFCFCFC),
                          ),
                          onPressed: loginUser,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ResponsiveText(
                            "Don’t have an account?",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            textColor: Color(0xFF0A0C0E),
                            textAlign: TextAlign.center,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupScreen(),
                                ),
                              );
                            },
                            child: const ResponsiveText(
                              "Register",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              textColor: Color(0xFF410D59),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
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
