import 'package:flutter/material.dart';
import 'package:memorymate/features/home_screen_widgets/notes/notes_view.dart';
import 'package:memorymate/features/walkthrough/presentation/view/splash_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: NotesView(),
    );
  }
}
