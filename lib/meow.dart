import 'package:flutter/material.dart';

class Cat extends StatefulWidget {
  const Cat({super.key});

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Column(
            children: [
              Stack(
                children:[Container(
                  height: 300,
                
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                  //bottomLeft: Radius.circular(20),
                  //bottomRight: Radius.circular(80),
                ),
                  ),
                ),
                  Container(
                  height: 300,
                
                  decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                  //bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(80),
                ),
                image: DecorationImage(image: NetworkImage('images/WhatsApp Image 2023-11-29 at 1.19.49 AM.jpeg'),fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 16,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 200,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("Aliclinic",style: TextStyle(
                            fontSize: 20,color: Colors.white,
                          ),),
                          Text("Veterinary clinic",style: TextStyle(
                            fontSize: 15,color: Colors.grey,
                          ),),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //color: Colors.white,
                          image: DecorationImage(image: NetworkImage("images/WhatsApp Image 2023-11-29 at 1.19.49 AM (1).jpeg"),
                          fit: BoxFit.cover)
                        ),
                      )
                    ],
                  ),
                )
                ]
              ),
               Container(
                height: 515,
              
                decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80),
              bottomLeft: Radius.circular(80),
              ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         SizedBox(height: 20,),
                            
                        Text("Title",style: TextStyle(
                              fontSize: 20,color: Colors.grey,
                            ),),
                            Text("Cougar Alex Treatment",style: TextStyle(
                              fontSize: 25,color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),),
                            Text("Description",style: TextStyle(
                              fontSize: 20,color: Colors.grey,
                            ),),
                            Text("Zookepers originally planned to euthanize it.need to have spinal surgery, thanks to which it will be able to live fully among relatives in the reserve.",style: TextStyle(
                              fontSize: 17,color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 20,),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Raised so far",style: TextStyle(
                                                                fontSize: 17,color: Colors.grey,
                                                              ),),
                                                               Text("\$ 14.599",style: TextStyle(
                                                                fontSize: 20,color: Colors.black,
                                                                fontWeight: FontWeight.bold
                                                              ),),
                                  ],
                                ),
                                 Column(
                                  children: [
                                    Text("Target",style: TextStyle(
                                                                fontSize: 17,color: Colors.grey,
                                                              ),),
                                                               Text("\$ 20.000",style: TextStyle(
                                                                fontSize: 20,color: Colors.black,
                                                                fontWeight: FontWeight.bold
                                                              ),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Center(
                              child: Row(
                                children: [
                                  Stack(
                                    children:[
                                      Container(
                                    height: 5,
                                    width: 360,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                       Container(
                                      height: 5,
                                      width: 270,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    ]
                                  ),
                                   
                                ],
                              ),
                            ),
                             SizedBox(height: 30,),
                            
                            Row(
                              children: [
                                SizedBox(width: 30,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),border: Border.all()
                                  ),
                                  child: Center(
                                    child: Text("\$10",style: TextStyle(
                                                                fontSize: 20,color: Colors.black,
                                                                fontWeight: FontWeight.bold
                                                              ),),
                                  ),
                                ),
                                SizedBox(width: 25,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),border: Border.all()
                                  ),
                                  child: Center(
                                    child: Text("\$10",style: TextStyle(
                                                                fontSize: 20,color: Colors.black,
                                                                fontWeight: FontWeight.bold
                                                              ),),
                                  ),
                                ),
                                SizedBox(width: 25,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),border: Border.all()
                                  ),
                                  child: Center(
                                    child: Text("\$10",style: TextStyle(
                                                                fontSize: 20,color: Colors.black,
                                                                fontWeight: FontWeight.bold
                                                              ),),
                                  ),
                                ),
                                SizedBox(width: 25,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),border: Border.all()
                                  ),
                                  child: Center(
                                    child: Text("\$10",style: TextStyle(
                                                                fontSize: 20,color: Colors.black,
                                                                fontWeight: FontWeight.bold
                                                              ),),
                                  ),
                                ),
                                
                              ],
                            ),
                            SizedBox(height: 25,),
                             Center(
                               child: ElevatedButton(onPressed: (){},
                                                    style: ElevatedButton.styleFrom(
                                          // backgroundColor: Colors.white,
                                             foregroundColor: Colors.black,
                                             elevation: 4,
                                             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                             shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(20),
                                               side: BorderSide(color: Colors.black),
                                             ),
                                             fixedSize: Size(330, 40), // Set the width and height
                                           ),
                                                    child: Text(
                                             'Custom Amount',
                                             style: TextStyle(
                                               fontSize: 16,
                                               fontWeight: FontWeight.bold,
                                             ),
                                           ),),
                             ),
                      ],
                    ),
                  ),
                ),
                
              ),
              Stack(
                children:[ Container(
                  height: 100,
                
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                 // topLeft: Radius.circular(80),
                 // bottomleft: Radius.circular(80),
                ),
                  ),
                ),
                Container(
                  height: 100,
                
                  decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                 //topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
                  ),
                  
                  child: Center(
                    child: ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 4,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black),
              ),
              fixedSize: Size(330, 40), // Set the width and height
            ),
                     child: Text(
              'Send Donation',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),),
                  ),
                  ),
                
                ]
              )


            ],
          ),

      ),
    );
  }
}