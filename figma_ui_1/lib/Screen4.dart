import 'package:figma_ui_1/Homescreen.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(    
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/30512719/pexels-photo-30512719/free-photo-of-artistic-latte-art-in-ceramic-mug-on-table.jpeg?auto=compress&cs=tinysrgb&w=400"),fit: BoxFit.cover)
          ),

          child: Padding(
            padding: const EdgeInsets.only(left: 25,bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Enjoy Your Coffee Brraks",
                   style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold)
                ),
                SizedBox(height: 20,),
            
                Text("Coffee breaks are about more than just caffeine-they're moments of connection, relaxation, and enjoyment.",
                   style: TextStyle(fontSize: 15,color: Colors.white,)
                ),
                SizedBox(height: 40,),
            
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 310,               
                    child: Center(
                      child: Text("Start Now",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.white),),
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