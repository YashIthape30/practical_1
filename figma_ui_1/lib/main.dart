import 'package:figma_ui_1/Details.dart';
import 'package:figma_ui_1/OnBordingScreen1.dart';
import 'package:figma_ui_1/OnBordingScreen2.dart';
import 'package:figma_ui_1/OnBordingScreen3.dart';
import 'package:figma_ui_1/Order.dart';
import 'package:figma_ui_1/Screen4.dart';
import 'package:figma_ui_1/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        body: OnBordingScreen1(),
      ),
    );
  }
}
