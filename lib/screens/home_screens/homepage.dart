import 'package:flutter/material.dart';
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
        title: ResponsiveText('MemoryMate'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
