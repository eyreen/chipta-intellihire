import 'package:flutter/material.dart';
import 'screens/landingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IntelliHire',
      theme: ThemeData(
        primaryColor: Color(0xFF3498db), // Primary color (blue)
        fontFamily: 'Montserrat', // Use your preferred font
      ),
      home: LandingPage(),
    );
  }
}