import 'package:flutter/material.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/screens/home_screens/widgets/digital_calendar.dart';
import 'package:memorymate/screens/home_screens/widgets/emergency_services.dart';
import 'package:memorymate/screens/home_screens/widgets/notes.dart';
import 'package:memorymate/screens/home_screens/widgets/photo_album.dart';
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
      appBar: AppBar(
        backgroundColor: const Color(0xff614E7E),
        title: const ResponsiveText(
          'MemoryMate',
          fontSize: 16,
          textColor: Colors.white,
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                  color: const Color(0xff9481B1),
                  borderRadius: BorderRadius.circular(8)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://www.google.com/imgres?q=alekh%20chaudhary&imgurl=https%3A%2F%2Fmedia.licdn.com%2Fdms%2Fimage%2FD4D03AQGNE7Hvh_Srbg%2Fprofile-displayphoto-shrink_800_800%2F0%2F1670084614155%3Fe%3D2147483647%26v%3Dbeta%26t%3DR9100TFTU9w_2f1wU8wXUM5IUgjF6xJtY1Sdjf_OuTo&imgrefurl=https%3A%2F%2Fin.linkedin.com%2Fin%2Falekh-dwivedi-he-him-127852192&docid=5lrfrfqJ39sdpM&tbnid=J2GbeQ1lyiF6XM&vet=12ahUKEwj6ssKQ6JSGAxUC4jgGHcNoAT8QM3oECGoQAA..i&w=560&h=560&hcb=2&itg=1&ved=2ahUKEwj6ssKQ6JSGAxUC4jgGHcNoAT8QM3oECGoQAA',
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: kVerticalMargin,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: kHorizontalMargin,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EmergencyServices(),
                Notes(),
              ],
            ),
          ),
          SizedBox(
            height: kVerticalMargin,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: kHorizontalMargin,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PhotoAlbum(),
                DigitalCalendars(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
