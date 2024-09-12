import 'package:flutter/material.dart';
import 'intro_screen.dart'; // Import the intro screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(), // Set the intro screen as the home screen
    );
  }
}
