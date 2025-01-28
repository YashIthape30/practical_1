import 'package:flutter/material.dart';

class Assign1 extends StatelessWidget {
    const Assign1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
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
    );
  }
}