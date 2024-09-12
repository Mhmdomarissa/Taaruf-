import 'package:flutter/material.dart';
import 'package:taaruf_app/intro/intro_screen.dart'; // Adjust according to your app's package name

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(), // Start with the first intro screen
    );
  }
}
