import 'package:flutter/material.dart';
import 'package:practical_4_listview_onsta/dummydata.dart';

class noti extends StatelessWidget {
   noti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications",style: TextStyle(fontSize: 20),),       
      ),

      body: ListView.builder(
        itemCount: notification.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10,left: 8),
                child: Container(
                  height: 55,
                  width: 250,
                  //color: Colors.amber,
                  child: Row(
                    children: [
                      CircleAvatar(radius: 25,backgroundImage: NetworkImage(notification[index]["profile"]),),
                       SizedBox(width: 10,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${notification[index]["user_name"]}",style: TextStyle(fontSize: 15),),
                          Text("following you. 1w",style: TextStyle(fontSize: 13),)
                        ],
                       )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 35,
                  width: 100,
                 // color: Colors.amber,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text("following")
                    ),
                
                ),
              ),
              
             
              

            ],
          );
        },
        ),
    );
  }
}