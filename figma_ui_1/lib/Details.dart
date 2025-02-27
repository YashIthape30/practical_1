import 'package:figma_ui_1/Order.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
   Map? single_cafe={

    };
  Details({super.key,this.single_cafe});
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        actions: [
          Text(
            "Navigation",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0E121F)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 110),
            child: Icon(
              Icons.more_vert,
              color: Color(0xFF0E121F),
              size: 24,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 308,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10,),
                    child: Image(image: AssetImage("${single_cafe!["image"]}"),
                        fit: BoxFit.cover,
                    ),
                  );         
                },
              ),
            ),
            SizedBox(height: 15,),
        
            Container(
              height: 74,
              width: 327,
             // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${single_cafe!["name"]}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color:Color(0xFF0E121F))),
                  Text("${single_cafe!["description"]}",style: TextStyle(fontSize: 12,color:Color(0xFF666A7A)),)
                ],
              ),
            ),
            SizedBox(height: 10,),
        
            Container(
              height: 32,
              width: 327,
             // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("About",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF9698A3)),),
                  Text("Menu",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFFC67C4E)),),
                  Text("Review",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF9698A3)),),
                ],
              ),
            ),
            SizedBox(height: 15,),
        
            Container(
              height: 106,
              width: 327,
              //color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hot Drinks",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF0E121F)),),
                  SizedBox(height: 10,),
                  Container(
                    height: 76,
                    width: 327,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14),),
                      color: Color(0xFFFFFFFF)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(Icons.coffee_maker_outlined,size: 44,color: Color(0xFFC67C4E),),
                          SizedBox(width: 15,),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Espresso",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF666A7A)),),
                                Text("IDR 20.000",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF0E121F)),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: 80,
              width: double.infinity,
              color: Color(0xFFFFFFFF),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 47,
                      width: 101,
                     // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Count",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF666A7A)),),
                          Text("IDR 65.000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xFF0E121F)),),               
                        ],
                      ),
                    ),

                    InkWell(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Order()));
                     },
                      child: Container(
                        height: 48,
                        width: 153,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Color(0xFFC67C4E)
                        ),
                        child: Center(
                          child: Text("Order",style: TextStyle(fontSize: 16,color: Color(0xFFFFFFFF)),)
                        ),
                      ),
                    )
                  ],
                ),
              ),

            )
        
        
          ],
        ),
      ),
    );
  }
}
