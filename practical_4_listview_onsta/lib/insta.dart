import 'package:flutter/material.dart';
import 'package:practical_4_listview_onsta/dummydata.dart';
import 'package:practical_4_listview_onsta/message.dart';
import 'package:practical_4_listview_onsta/noti.dart';

class insta extends StatelessWidget {
  insta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
             AppBar(
        title: Text("Instagram"),
        actions: [
          Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.circle_outlined),
          

                 IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context) => noti()));
                }, icon: Icon(Icons.favorite_outline)),
                
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context) => Message()));
                }, icon: Icon(Icons.chat)),
              ],
            ),
          ),
        ],
      ),

            Container(
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                itemCount: stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              NetworkImage(stories[index]["st0_img"]),
                        ),
                        Text("${stories[index]["user_name"]}")
                      ],
                    ),
                  );
                },
              ),
              margin: EdgeInsets.only(left: 10),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 300,
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            posts[index]["profile"]),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(posts[index]["user_name"]),
                                              Icon(
                                                Icons.verified,
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.music_note_sharp,
                                                size: 15,
                                              ),
                                              Text("${posts[index]["song"]}")
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(Icons.more_vert_outlined)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Image.network(
                          height: 300,
                          width: double.infinity,
                          "${posts[index]["post_img"]}",
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 200,
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.favorite_border),
                                  Text("10k"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.comment),
                                  Text("1k"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.send_sharp),
                                  Text("5k"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(Icons.bookmark_border),
                            ),
                          ],
                        ),
                        Row(
                          children: [Text("${posts[index]["caption"]}")],
                        ),
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
