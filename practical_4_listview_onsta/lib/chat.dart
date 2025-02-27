import 'package:flutter/material.dart';
import 'package:practical_4_listview_onsta/dummydata.dart';

class Chat extends StatelessWidget {
    Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 40,
            width: 340,
            //color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 250,
                 // color: Colors.amberAccent,
                  child: Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(width: 10,),
                      Text("_yash__3031",style: TextStyle(fontSize: 20),),
                    ],
                  )),              
                
                Container(
                height: 40,
                width: 90,
                //color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     IconButton(onPressed: (){}, icon: Icon(Icons.call),iconSize: 25,),
                     IconButton(onPressed: (){}, icon: Icon(Icons.video_call),iconSize: 25,),
                  ],
                ),
              ),           
              ],
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              children: [
                 Container(
                  height: 40,
                  width: 200,
                  //color: Colors.pink,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.pink),
                  child: Center(child: Text("yash"))
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}