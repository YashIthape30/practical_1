import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
                    "Order",
                    style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0E121F)),
                  ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(          
          children: [
            Center(
              child: Container(
                height: 50,
                width: 327,
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 20,
                      color: Color(0xFFC67C4E),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 263,
                      height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shipping address",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF666A7A)),
                          ),
                          Text(
                            "Jl. Melati No. 12",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0E121F)),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.more_vert_outlined,
                      size: 30,
                      color: Color(0xFF9698A3),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 48,
              width: 327,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Color(0xFFFFFFFF)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(
                      Icons.note_alt_outlined,
                      size: 20,
                      color: Color(0xFF9698A3),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Notes for drivers",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF9698A3),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 0,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFFE8E9EB))),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 205,
              width: 327,
              //color: Colors.amber,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shopping list",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF00E121F)),
                      ),
                      Text(
                        "+ Add more",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFC67C4E)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
        
        
        
                  Container(
                    height: 76,
                    width: 327,
                    //color: Colors.amber,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: Color(0xFFFFFFFF)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.coffee_maker_outlined,
                            size: 44,
                            color: Color(0xFFC67C4E),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 235,
                            //color: Colors.amber,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Macchiato",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF666A7A)),
                                ),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "IDR 25.000",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFFC67C4E)),
                                    ),
                                    Text(
                                      "X 1",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFC67C4E)),
                                    )
                                  ],
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
        
        
                  Container(
                    height: 76,
                    width: 327,
                    //color: Colors.amber,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: Color(0xFFFFFFFF)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.coffee_maker_outlined,
                            size: 44,
                            color: Color(0xFFC67C4E),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 235,
                            //color: Colors.amber,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cold Brew",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF666A7A)),
                                ),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "IDR 40.000",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFFC67C4E)),
                                    ),
                                    Text(
                                      "X 1",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFC67C4E)),
                                    )
                                  ],
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(
                    height: 10,
                   ),
        
            Container(
                     width: double.infinity,
                     height: 0,
                     decoration: BoxDecoration(
                     border: Border.all(width: 1, color: Color(0xFFE8E9EB))),
                    ),
                  SizedBox(
                    height: 10,
                   ),
        
              Container(
                height: 110,
                width: 327,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text("Payment details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF0E121F)),),
                   SizedBox(height: 10,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [  
                     Text("Total price",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF666A7A)),),
                     Text("IDR 65.000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xFF0E121F)),),
                    ],
                   ),
                   SizedBox(height: 5,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [  
                     Text("Delivery Fee",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF666A7A)),),
                     Text("IDR 14.000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xFF0E121F)),),
                    ],
                   ),
                   SizedBox(height: 5,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [  
                     Text("Packing Fee",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF666A7A)),),
                     Text("IDR 3.200",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xFF0E121F)),),
                    ],
                   ),   
                  ],
                ),
              ),
              SizedBox(height: 5,),

              Container(
                height: 140,
                width: double.infinity,
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(top:15,bottom:15,left: 20,right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 32,
                            width: 173,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("IDR 65.000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xFF0E121F)),),
                                Container(
                                  height: 32,
                                  width: 86,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                    color: Color(0xFFC67C4E)
                                  ),
                                  child: Center(
                                    child:Text("💸 Gopay",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xFFFFFFFF)),),
                                  ),
                                ),                              
                              ],
                            ),
                          ),
                          Icon(Icons.more_vert_outlined,size: 24,color: Color(0xFF9698A3),),
                        ],
                      ),
                      SizedBox(height: 15,),

                      Container(
                        height: 52,
                        width: 327,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Color(0xFFC67C4E),
                        ),
                        child: Center(
                          child:Text("Order Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFFFFFFFF)),),
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
