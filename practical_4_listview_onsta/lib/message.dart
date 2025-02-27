import 'package:flutter/material.dart';
import 'package:practical_4_listview_onsta/chat.dart';
import 'package:practical_4_listview_onsta/dummydata.dart';

class Message extends StatelessWidget {
  Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("_yash__3031",style: TextStyle(fontSize: 20),),
        actions: [
          //Title(color: Colors.black, child: Text("_yash__3031",style: TextStyle(fontSize: 20),)),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              height: 50,
              width: 50,
              //color: Colors.amber,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.note_alt_outlined)),
            ),
          ),
          
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [   
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(
                height: 40,
                width: double.infinity,
                child: SearchBar(hintText: "Search",)),
            ),
            SizedBox(height: 10,),

            Container(
               height: 100,
               width: double.infinity,
               child: ListView.builder(
                  itemCount: note.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(note[index]["profile"]),
                          ),                       
                          Text("${note[index]["user_name"]}")
                        ],
                      ),
                    );
                  },
                 ),
               ),
               SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 150,                
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Messages",style: TextStyle(fontSize: 18),),
                      Icon(Icons.notifications_none)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("Requests",style: TextStyle(fontSize: 18,color: Colors.blue),),
                ),
              ],
            ),     
            SizedBox(height: 10,), 
        
        
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: message.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 300,
                            //color: Colors.amber,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        NetworkImage(message[index]["profile"]),
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${message[index]["user_name"]}",style: TextStyle(fontSize: 15,),),
                                      Text("${message[index]["mess"]}")
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],  
        ),
      ),
    );
  }
}



