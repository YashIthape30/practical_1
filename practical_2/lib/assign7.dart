import 'package:flutter/material.dart';

class Assign7 extends StatelessWidget {
  const Assign7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          height: 500,
          width: 500,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.amber,
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.amber,
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.amber,
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.amber,
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
    