import 'package:flutter/material.dart';
import 'package:memorymate/widgets/responsive_text.dart';

class EmergencyServicesView extends StatefulWidget {
  const EmergencyServicesView({super.key});

  @override
  State<EmergencyServicesView> createState() => _EmergencyServicesViewState();
}

class _EmergencyServicesViewState extends State<EmergencyServicesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ResponsiveText(
          'Emergency Services',
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
