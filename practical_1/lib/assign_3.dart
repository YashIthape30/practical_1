import 'package:flutter/material.dart';

class assign_3 extends StatelessWidget {
  const assign_3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.black,
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