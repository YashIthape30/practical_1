import 'package:flutter/material.dart';
import 'package:todo_firebase/Dashboard.dart';
import 'package:todo_firebase/Loginscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final CollectionReference info =FirebaseFirestore.instance.collection("info");

  Future<void> checkdata ()async{
    QuerySnapshot data = await info.get();

    if (data.docs.isNotEmpty) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
    }
    else{
       Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen( users1:info)));
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/login.png"),fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 190),
              child: Container(
                height: 194,
                width: 254,
                child: Image(image: AssetImage("assets/bg1.png"),fit: BoxFit.cover,)),
            ),
            SizedBox(height: 20,),
            Text("Gets things with TODs",style: TextStyle(fontSize: 18,color: Color(0xFF000000),fontWeight: FontWeight.w700),),
             SizedBox(height: 20,),
            Container(
              height: 100,
              width: 203,
              child: Center(
                child: Text("Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.",
                        style: TextStyle(fontSize: 13,color: Color(0xFF000000),fontWeight: FontWeight.w400),),
              )),
              SizedBox(height: 30,),
          
          
              InkWell(
                onTap: () {                
                  checkdata();
                },
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xFF50C2C9),
                  ),
                  child: Center(
                    child: Text("Get Started",style: TextStyle(fontSize: 18,color: Color(0xFFFFFFFF),fontWeight: FontWeight.w600),),
                  ),
                ),
              ),
          ],
        ),
     ),
   );;
  }
}