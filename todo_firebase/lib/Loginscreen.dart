
import 'package:flutter/material.dart';
import 'package:todo_firebase/Dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Loginscreen extends StatefulWidget {

 final CollectionReference users1 ;
  const Loginscreen({super.key,required this.users1});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
   
  final _fomekey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future<void> savedata()async{
   await widget.users1.add({"name":name.text ,"pass":pass.text});

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/login.png"),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Text("Welcome back",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 138,
              width: 180,
              child: Image(image: AssetImage("assets/bg2.png"),fit: BoxFit.cover,),
            ),
            SizedBox(height: 25,),

            Form(
              key: _fomekey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Enter your Name",
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        )
                      ),
                      
                       validator: (value){
                         if (value!.isEmpty) {
                           return "Enter user_name";
                         }
                         else if(value!="yash"){
                           name.text="";
                           return "Invalide user_name";                          
                         }
                         // name.text="";
                       },
                       controller: name,
                    ),
                  ),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        hintText: "Enter Password",
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        )
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                           return "Enter Password";
                         }
                         else if(value!="1234"){
                           pass.text="";
                           return "Invalide Password";
                         }
                      },
                      controller: pass,
                        
                    ),
                  ),
                  SizedBox(height: 20,),

                  InkWell(onTap: (){ },
                   child:Container(child: Text("Forget password ?",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color:Color(0xFF50C2C9)),))),
                  SizedBox(height: 30,),

                  InkWell(
                  onTap: () {
                    
                   if(_fomekey.currentState!.validate()){
                     savedata();
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
     
                   };
                  
                   
                },
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xFF50C2C9),
                  ),
                  child: Center(
                    child: Text("Login",style: TextStyle(fontSize: 18,color: Color(0xFFFFFFFF),fontWeight: FontWeight.w600),),
                  ),
                ),
              ),
              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account ?",style: TextStyle(fontSize: 16,color: Color(0xFF000000),fontWeight: FontWeight.w400),),
                  Text("Sign Up",style: TextStyle(fontSize: 16,color: Color(0xFF50C2C9),fontWeight: FontWeight.w400),),
                ],
              )

              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}