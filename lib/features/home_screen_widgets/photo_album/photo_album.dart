import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/features/home_screen_widgets/photo_album/photo_view.dart';
import 'package:memorymate/widgets/responsive_text.dart';

import '../../../core/utils/util.dart';

class PhotoAlbum extends StatelessWidget {
  const PhotoAlbum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PhotoView()));
      },
      child: Container(
        height: height * 0.3,
        width: width * 0.45,
        decoration: BoxDecoration(
            color: const Color(kBackground),
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(Assets.images.PhotoAlbums),
              SizedBox(
                height: kHorizontalMargin,
              ),
              Flexible(
                child: const ResponsiveText(
                  'Photo Albums & Memories',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
