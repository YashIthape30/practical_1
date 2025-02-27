import 'package:figma_ui_1/Details.dart';
import 'package:figma_ui_1/tempdata.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
             children: [
              Container(
                height: 194,
                width: 375,
                color: Color(0xFF131313),
                child: Column(
                  children: [
                     Container(
                        height: 44,
                        width: 375,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25,right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("9:41",style: TextStyle(fontSize: 16,color: Color(0xFFFFFFFF)),),
                              Container(
                                height: 44,
                                width: 50,
                                child: Row(
                                  children: [
                                    Icon(Icons.signal_cellular_alt,size: 10,color: Color(0xFFFFFFFF),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.wifi,size: 10,color: Color(0xFFFFFFFF),),
                                    SizedBox(width: 5,),
                                    Icon(Icons.battery_std_outlined,size: 10,color: Color(0xFFFFFFFF),),                   
                                  ],
                                ),
                              )                     
                            ],
                          ),
                        ),
                    ),
                    SizedBox(height: 16,),
              
                    Container(
                      height: 47,
                      width: 327,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 47,
                            width: 195,
                           // color: Colors.amber,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Good morning Walsh!",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color:Color(0xFFFFFFFF)),),
                                Text("It’s a great day for coffee",style: TextStyle(fontSize: 12,color: Color(0xFFE8E9EB)),)
                              ],
                            ),
                          ),                
                          Container(
                            height: 24,
                            width: 56,
                            child: Row(
                              children: [
                                Icon(Icons.search,size: 24,color: Color(0xFFFFFFFF),),
                                SizedBox(width: 5,),
                                Icon(Icons.notifications,size: 24,color: Color(0xFFFFFFFF))
                              ],
                            ),
                          )
                        ],
                      ),                
                    ),
                    SizedBox(height: 16,),                 
                  ],
                ),
              ),
        
              Positioned(
                top: 127,
                left: 24,
                child: Container(
                  height: 134,
                  width: 327,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    border: Border.all(width: 1,color: Color(0xFFE8E9EB)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 25,
                          width: 295,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Your card balance",style: TextStyle(fontSize: 16,color: Color(0xFF666A7A)),),
                              Container(
                                height: 25,
                                width: 120,
                                child: Row(
                                  children: [
                                     Text("💸",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w600,color:Colors.green),),
                                     Text(" IDR 246.000",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w600,color: Color(0xFF0E121F)),)
                                  ],
                                ),
                              )                           
                            ],
                          ),
                        ),
                        Text("*---------------------------------------------------------------------*",style: TextStyle(color: Color(0xFFD9A788)),),
                        
                        Container(
                          height: 45,
                          width: 295,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.cloud_download_outlined,color: Color(0xFFC67C4E),size: 24,),
                                  Text("Top Up",style: TextStyle(fontSize: 12,color: Color(0xFF666A7A)),)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.cloud_upload_outlined,color: Color(0xFFC67C4E),size: 24,),
                                  Text("Pay",style: TextStyle(fontSize: 12,color: Color(0xFF666A7A)),)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.hexagon_outlined,color: Color(0xFFC67C4E),size: 24,),
                                  Text("Promo",style: TextStyle(fontSize: 12,color: Color(0xFF666A7A)),)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.history_toggle_off_outlined,color: Color(0xFFC67C4E),size: 24,),
                                  SizedBox(height: 4,),
                                  Text("History",style: TextStyle(fontSize: 12,color: Color(0xFF666A7A)),)
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
             ]
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Container(
                height: 117,
                width: 327,
                //color: Colors.amberAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your card rewards",style: TextStyle(fontSize: 18,color: Color(0xFF0E121F),fontWeight:FontWeight.w600),),
                        Text("View all",style: TextStyle(fontSize: 14,color: Color(0xFFC67C4E),fontWeight:FontWeight.w500),),
                      ],
                    ),
                    Container(
                      height: 76,
                      width: 327,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(14))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(Icons.coffee_maker_outlined,color: Color(0xFFC67C4E),size: 44,),
                            SizedBox(width: 10,),
                            Container(
                              height: 44,
                              width: 239,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Free 1 Coffee",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF0E121F))),
                                      Container(
                                        child:Row(
                                          children: [
                                            Text("2",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500,color: Color(0xFF0E121F)),),
                                            Text("/5",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500,color: Color(0xFF9698A3)),),
                                          ],
                                        ))
                                    ],
                                  ),
                                  Text("Buy 5 Coffee and get 1 coffee for free",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF666A7A)),)
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
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 241,
                width: 375,
                //color: Colors.amber,
                child: Column(
                  children: [
                    Container(
                      height: 25,
                      width: 327,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Recommended Place",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF0E121F)),),
                            Text("View all",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFFC67C4E)),),                          
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16,),
        
                    Expanded(
                      child:ListView.builder(
                        itemCount: cafe.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(single_cafe: cafe[index],)));
                              },
                              child: Container(
                                height: 200,
                                width: 175,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage(cafe[index]["image"]),fit: BoxFit.cover),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 46,
                                        width: 147,
                                        //color: Colors.amber,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("${cafe[index]["name"]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFFFFFFFF)),),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on_outlined,size: 18,color: Color(0xFFE8E9EB),),
                                                SizedBox(width: 3,),
                                                Text("${cafe[index]["location"]}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFFE8E9EB)),)
                                              ],
                                            )                        
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                      
                                      
                              ),
                            ),
                          );
                          
                          
                        },
                      ),
                    ),
        
                    
        
        
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