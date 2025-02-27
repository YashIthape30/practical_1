import 'package:flutter/material.dart';
import 'package:whatsapp/temp_data.dart';

class Assign1 extends StatelessWidget {
  const Assign1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(fontSize: 24,color: Colors.green),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,size: 20,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 20,)),
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: 2,
        backgroundColor: Colors.black,
                
        items:[
          
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update),label: "Updates",),
          BottomNavigationBarItem(icon: Icon(Icons.groups_2_sharp),label: "Communities"),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls",),
          
         ]
        ), 


      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 40,
                width: double.infinity,
                child: SearchBar(hintText: "Search...",)
                ),
            ),
            SizedBox(height: 5,),
        
            Container(
              child: ListView.builder(
                itemCount: contact.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 200,
                          //color: Colors.amber,
                          child: Row(
                            children: [
                              CircleAvatar(radius: 23,backgroundImage: NetworkImage(contact[index]["dp"]),),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${contact[index]["name"]}",style: TextStyle(fontSize: 18,),),
                                  Text("${contact[index]["message"]}",style: TextStyle(fontSize: 14),)
                                ],
                              )
                            ],
                          )
                        ),
                    
                        Container(
                          height: 40,
                          width: 70,
                          //color: Colors.amber,
                          child: Column(
                            
                            children: [
                              Text("${contact[index]["time"]}",style: TextStyle(fontSize: 12,color: Colors.green)),
                              
                              Text(""),
                            ],
                          ),
                        )
                    
                      ],
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