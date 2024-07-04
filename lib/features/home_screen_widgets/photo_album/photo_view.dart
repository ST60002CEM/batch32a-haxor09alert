import 'package:flutter/material.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({super.key});

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ResponsiveText(
          'Photo Albums & Memories',
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Color(kBackground),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
