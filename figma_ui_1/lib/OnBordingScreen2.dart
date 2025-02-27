import 'package:figma_ui_1/OnBordingScreen3.dart';
import 'package:flutter/material.dart';

class OnBordingScreen2 extends StatelessWidget {
  const OnBordingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(    
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/30853595/pexels-photo-30853595/free-photo-of-latte-art-coffee-with-pastry-in-cafe-setting.jpeg?auto=compress&cs=tinysrgb&w=400"),fit: BoxFit.cover)
          ),

          child: Padding(
            padding: const EdgeInsets.only(left: 25,bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Connect with Coffee Lovers",
                   style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold)
                ),
                SizedBox(height: 20,),
            
                Text("Follow other coffee enthusiasts, send them messages, and share your favorite coffee experiences",
                   style: TextStyle(fontSize: 15,color: Colors.black,)
                ),
                SizedBox(height: 40,),
            
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBordingScreen3()));
                  },
                  child: Container(
                    height: 50,
                    width: 310,               
                    child: Center(
                      child: Text("Next",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.white),),
                    ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.orange[300],),
                  ),
                ),
                
              ],
            ),
          ),
      ),

    );
  }
}