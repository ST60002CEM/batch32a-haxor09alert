import 'package:flutter/material.dart';
import 'package:memorymate/app/constant/api_endpoint.dart';
import 'package:memorymate/core/constants/constants.dart';
import 'package:memorymate/core/utils/util.dart';
import 'package:memorymate/features/home_screen_widgets/digital_calendar/digital_calendar.dart';
import 'package:memorymate/features/home_screen_widgets/emergency_services/emergency_services.dart';
import 'package:memorymate/features/home_screen_widgets/notes/notes.dart';
import 'package:memorymate/features/home_screen_widgets/photo_album/photo_album.dart';
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(loggedInUser!.avatar!),
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
