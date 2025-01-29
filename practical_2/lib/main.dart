import 'package:flutter/material.dart';
import 'package:practical_2/assign1.dart';
import 'package:practical_2/assign2.dart';
import 'package:practical_2/assign3.dart';
import 'package:practical_2/assign4.dart';
import 'package:practical_2/assign5.dart';
import 'package:practical_2/assign6.dart';
import 'package:practical_2/assign7.dart';
import 'package:practical_2/assign8.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assign8()
    );
  }
}
