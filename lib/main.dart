import 'package:flutter/material.dart';
import 'package:jenniferlee/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NIHAN App',
      theme: ThemeData(
        primaryColor: Color(0xFF005980),
        accentColor: Color(0xFF7facbf),
        scaffoldBackgroundColor: Color(0xFFeff5f8),
        fontFamily: 'Work Sans',
      ),
      home: HomePage(),
    );
  }
}
