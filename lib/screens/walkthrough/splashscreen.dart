import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/string_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/screens/auth_screen/login_screen/model/login_screen.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // Assuming kHorizontalMargin, kVerticalMargin, width, and height are defined
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    const double kHorizontalMargin = 16.0;
    const double kVerticalMargin = 16.0;

    return Scaffold(
      backgroundColor: const Color(0xffFDF3E7),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: kHorizontalMargin, vertical: kVerticalMargin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.images.Logo),
              const ResponsiveText(
                KAppName,
                fontSize: 32,
                fontFamily: 'SF Pro Rounded',
                fontWeight: FontWeight.w400,
                textColor: Color(0xFF614E7E),
              ),
              const ResponsiveText(
                "Empowering Dementia Care",
                fontSize: 20,
                fontFamily: 'Helvetic',
                fontWeight: FontWeight.w400,
                textColor: Color(0xFF2F676A),
              ),
              const SizedBox(
                height: kVerticalMargin * 2,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: kVerticalMargin),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(width * 0.56, height * 0.07),
                    backgroundColor: const Color(0xFF614E7E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const ResponsiveText(
                    "Get Started",
                    fontSize: 24,
                    fontFamily: 'Times',
                    fontWeight: FontWeight.w400,
                    textColor: Color(0xFFFCFCFC),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
