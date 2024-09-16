import 'package:flutter/material.dart';
import 'intro/intro_screen.dart'; // Import IntroScreen3

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taaruf App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: IntroScreen(), // Set IntroScreen3 as the initial screen
    );
  }
}
