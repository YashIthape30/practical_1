import 'package:figma_ui_1/OnBordingScreen2.dart';
import 'package:flutter/material.dart';

class OnBordingScreen1 extends StatelessWidget {
  const OnBordingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(    
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/20395998/pexels-photo-20395998/free-photo-of-coffee-cup-on-table.jpeg?auto=compress&cs=tinysrgb&w=400"),fit: BoxFit.cover)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25,bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome to coffee break",
                   style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold)
                ),
                SizedBox(height: 20,),
            
                Text("Your go-to app for connecting with fellow coffee lovers, discovering new cafes, and organizing coffee meetups!",
                   style: TextStyle(fontSize: 15,color: Colors.white,)
                ),
                SizedBox(height: 20,),
            
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBordingScreen2()));
                  },
                  child: Container(
                    height: 50,
                    width: 310,               
                    child: Center(
                      child: Text("Get Started",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.white),),
                    ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.orange[300],),
                  ),
                ),
                SizedBox(height: 20,),
            
                Container(
                  height: 50,
                  width: 310,               
                  child: Center(
                    child: Text("Login",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.white,),
                ),
                
              ],
            ),
          ),
          
        ),
    );
  }
}