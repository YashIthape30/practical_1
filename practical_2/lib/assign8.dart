import 'package:flutter/material.dart';

class Assign8 extends StatelessWidget {
  const Assign8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 600,
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [             
                  Container(
                    height: 100,
                    width: 100,                   
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(200)),
                    ),
                  ),

                  Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("yash"),
                        Text("jay"),
                        Text("raj")
                      ],
                    ),
                  ),
                ],
              ),
            
          ),
        ),
      
    );
  }
}