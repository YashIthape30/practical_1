import 'package:flutter/material.dart';

class Assign1 extends StatelessWidget {
  const Assign1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            Image.network(
                height: 400,
                width: 400,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                "https://images.pexels.com/photos/30237034/pexels-photo-30237034/free-photo-of-chateau-de-le-lude-in-golden-hour.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
            SizedBox(height: 10,),
            Image.network(
                height: 400,
                width: 400,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                "https://images.pexels.com/photos/30237034/pexels-photo-30237034/free-photo-of-chateau-de-le-lude-in-golden-hour.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
            SizedBox(height: 10,),
            Image.network(
                height: 400,
                width: 400,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                "https://images.pexels.com/photos/30237034/pexels-photo-30237034/free-photo-of-chateau-de-le-lude-in-golden-hour.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
          ],
        ),
      ),
    );
  }
}
