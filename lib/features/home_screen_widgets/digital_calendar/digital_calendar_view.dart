import 'package:flutter/material.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class DigitalCalendarView extends StatefulWidget {
  const DigitalCalendarView({super.key});

  @override
  State<DigitalCalendarView> createState() => _DigitalCalendarViewState();
}

class _DigitalCalendarViewState extends State<DigitalCalendarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ResponsiveText(
          'Digital Calendar',
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Column(),
    );
  }
}
