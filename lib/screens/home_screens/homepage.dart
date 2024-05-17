import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memorymate/core/constants/color_constants.dart';
import 'package:memorymate/core/utils/asset_provider.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff614E7E),
      //   title: ResponsiveText('MemoryMate'),

      // ),
      backgroundColor: Color(kBackground),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: height * 0.12,
                decoration: BoxDecoration(
                    color: Color(0xff614E7E),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: SvgPicture.asset(Assets.svgImages.menu)),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xff9481B1),
                                border: Border.all(color: Color(0xff464C53))),
                            child: Icon(
                              Icons.notifications_outlined,
                              color: const Color.fromARGB(255, 8, 6, 6),
                            ),
                          ),
                          CircleAvatar(
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://www.google.com/imgres?q=alekh%20chaudhary&imgurl=https%3A%2F%2Fmedia.licdn.com%2Fdms%2Fimage%2FD4D03AQGNE7Hvh_Srbg%2Fprofile-displayphoto-shrink_800_800%2F0%2F1670084614155%3Fe%3D2147483647%26v%3Dbeta%26t%3DR9100TFTU9w_2f1wU8wXUM5IUgjF6xJtY1Sdjf_OuTo&imgrefurl=https%3A%2F%2Fin.linkedin.com%2Fin%2Falekh-dwivedi-he-him-127852192&docid=5lrfrfqJ39sdpM&tbnid=J2GbeQ1lyiF6XM&vet=12ahUKEwj6ssKQ6JSGAxUC4jgGHcNoAT8QM3oECGoQAA..i&w=560&h=560&hcb=2&itg=1&ved=2ahUKEwj6ssKQ6JSGAxUC4jgGHcNoAT8QM3oECGoQAA',
                              height: 50,
                              width: 50,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
