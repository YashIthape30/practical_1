import 'package:flutter/material.dart';

class assign_2 extends StatefulWidget {
  const assign_2({super.key});

  @override
  State<assign_2> createState() => _assign_2State();
}

class _assign_2State extends State<assign_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 156, 46, 46),
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.white,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}