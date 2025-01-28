import 'package:flutter/material.dart';

class assign_4 extends StatelessWidget {
  const assign_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body: Container(
        width: double.infinity,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             Container(
               color: const Color.fromARGB(255, 235, 99, 8),
               width: 100,
               height: 100,
             ),
             Container(
               color: Colors.white,
               width: 100,
               height: 100,
             ),
             Container(
               color: const Color.fromARGB(255, 2, 139, 25),
               width: 100,
               height: 100,
             ),
           ],
         ),
       ),
    );
  }
}