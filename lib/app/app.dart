import 'package:flutter/material.dart';
import 'package:memorymate/screens/auth_screen/login_screen/model/login_screen.dart';
import 'package:memorymate/screens/walkthrough/splashscreen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
