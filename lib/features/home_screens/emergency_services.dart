import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class EmergencyServices extends StatelessWidget {
  const EmergencyServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      width: 180,
      decoration: BoxDecoration(
          color: const Color(kBackground),
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(Assets.images.EmergencyServices),
            SizedBox(
              height: kHorizontalMargin,
            ),
            const ResponsiveText(
              'Emergency Services',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}