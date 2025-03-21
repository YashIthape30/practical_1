import 'package:flutter/material.dart';
import 'package:todo_firebase/Dashboard.dart';
import 'package:todo_firebase/Loginscreen.dart';
import 'package:todo_firebase/Splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splashscreen()
   );
  }
}
