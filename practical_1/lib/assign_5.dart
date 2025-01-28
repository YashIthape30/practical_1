import 'package:flutter/material.dart';

class assign_5 extends StatelessWidget {
  const assign_5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          width:500 ,
          height: 500,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             
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
      )
    );
  }
}