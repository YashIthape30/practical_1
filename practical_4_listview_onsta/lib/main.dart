import 'package:flutter/material.dart';
import 'package:practical_4_listview_onsta/chat.dart';
import 'package:practical_4_listview_onsta/dummydata.dart';
import 'package:practical_4_listview_onsta/insta.dart';
import 'package:practical_4_listview_onsta/message.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: insta()

    );
  }
}
