import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  CollectionReference tasks =FirebaseFirestore.instance.collection("tasks");

  Color box_color =Color(0xFFFFFFFF);
  TextEditingController text = TextEditingController();

  Future<void> savedata()async{
    await tasks.add({"task":text.text});
    text.clear();
  }

  Future<void> removedata(String id)async{
    await tasks.doc(id).delete();
  }
  
  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children:[
              Container(
              height: 250,
              width: double.infinity,
              color: Color(0xFF50C2C9),
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:AssetImage("assets/bg4.png",)
                    ),
                    SizedBox(height: 5,),
                    Text("Welcome Jeegar goyani",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),)
                  ],
                ),
              ),
            ),
            Image(image: AssetImage("assets/bg3.png")),
            ]
          ),
          
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 20,bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Good Afternoon",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xFF000000)),)
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image(image: AssetImage("assets/clock.png"),fit: BoxFit.cover,)),
          Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 5),
            child: Row(
              children: [
                Text("Task list",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xFF000000)),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
                height: 230,
                width: double.infinity, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 4),
                      blurRadius: 10,
                      spreadRadius: 0
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 260,
                            decoration: BoxDecoration(
                              color: Color(0xFFEDD7D7)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3,),
                              child: TextField(
                                controller: text,
                              ),
                            ),
                          ),
                          
                          SizedBox(width: 10,),
                          IconButton(onPressed:savedata, icon: Icon(Icons.add,size: 30,),color: Color(0xFF32E7F2),)
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),

                    Expanded(child: StreamBuilder(
                      stream: tasks.snapshots(), 
                      builder:(context,snapshot){
                        if (!snapshot.hasData) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var doc =snapshot.data!.docs;
                        return Padding(
                          padding: const EdgeInsets.only(left: 15,bottom: 10,right: 15),
                          child: Row(
                            children: [
                              InkWell(
                                onTap:() => removedata(doc[index].id),
                                child: Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                    color: box_color,
                                    border: Border.all(width: 2,color: Color(0xFF000000))
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),                            
                              Text("${doc[index]["task"]}",style: TextStyle(fontSize: 18),)
                            ],
                          ),
                        );

                      },
                    );
                      }
                     )  
                   )
                  ],
                ),
              ),
          )

        ],
      ),
    );
  }
}