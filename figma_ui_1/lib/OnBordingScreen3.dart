import 'package:figma_ui_1/Screen4.dart';
import 'package:flutter/material.dart';

class OnBordingScreen3 extends StatelessWidget {
  const OnBordingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(    
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/8936889/pexels-photo-8936889.jpeg?auto=compress&cs=tinysrgb&w=400"),fit: BoxFit.cover)
          ),

          child: Padding(
            padding: const EdgeInsets.only(left: 25,bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Orgnaize Coffee Meetups",
                   style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold)
                ),
                SizedBox(height: 20,),
            
                Text("Set the date, time, and location, and watch as others join in to share the joy of a good cup of coffee and great conversations.",
                   style: TextStyle(fontSize: 15,color: Colors.black,)
                ),
                SizedBox(height: 40,),
            
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen4()));
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