import 'package:flutter/material.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kHorizontalMargin * 0.5,
          vertical: kVerticalMargin),
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
    );
  }
}
