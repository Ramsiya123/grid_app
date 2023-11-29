// import 'package:flutter/material.dart';

// class SCREEN_ONE extends StatefulWidget {
//   const SCREEN_ONE({super.key});

//   @override
//   State<SCREEN_ONE> createState() => _SCREEN_ONEState();
// }

// class _SCREEN_ONEState extends State<SCREEN_ONE> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Screen1"),
//       ),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         color: Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               SizedBox(height: 10,),
//               Container(
//                 height: 200,
//                 child: GridView.builder(
//                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2, // Number of columns
//                           crossAxisSpacing: 8.0, // Spacing between columns
//                           mainAxisSpacing: 8.0, // Spacing between rows
//                         ), 
//                           itemCount: 2, // Total number of items
//                         itemBuilder: (BuildContext context, int index) {
//                           return Container(
//                             //width: 200,
//                            // height: 200,
//                 color: Colors.grey[400], // You can customize the color as needed
//                 child: Center(
//                   child: Text(
//                     'Item $index',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                           );
//                         },
//                       ),
//               ),
//             //  SizedBox(height: 10),
//                Container(
//                 height: 250,
//                  child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
                          
//                            itemCount: 3, // Total number of items
//                          itemBuilder: (BuildContext context, int index) {
//                            return Padding(
//                              padding: const EdgeInsets.all(6.0),
//                              child: Container(
//                               height: 300,
//                               width: 120,
//                                               color: Colors.grey[400], // You can customize the color as needed
//                                               child: Center(
//                                                 child: Text(
//                                                   'Item $index',
//                                                   style: TextStyle(color: Colors.white),
//                                                 ),
//                                               ),
//                              ),
//                            );
//                          },
//                        ),
//                ),
//                Container(
//                 height: 300,
//                 child: GridView.builder(
//                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2, // Number of columns
//                           crossAxisSpacing: 8.0, // Spacing between columns
//                           mainAxisSpacing: 8.0, // Spacing between rows
//                         ), 
//                           itemCount: 2, // Total number of items
//                         itemBuilder: (BuildContext context, int index) {
//                           return Container(
//                             width: 400,
//                             height: 400,
//                 color: Colors.grey[400], // You can customize the color as needed
//                 child: Center(
//                   child: Text(
//                     'Item $index',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                           );
//                         },
//                       ),
//               ),
//             ]
//           ),
//         ),
//       )
//     );
//   }
// }