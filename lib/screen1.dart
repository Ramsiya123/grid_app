import 'package:flutter/material.dart';

class SCREEN_ONE extends StatefulWidget {
  const SCREEN_ONE({super.key});

  @override
  State<SCREEN_ONE> createState() => _SCREEN_ONEState();
}

class _SCREEN_ONEState extends State<SCREEN_ONE> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // Navigate to the second screen with the selected color
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondScreen(selectedColor: index == 0 ? Colors.red : Colors.grey,selectedColor1:index == 1 ? Colors.yellow : Colors.grey,),
                            ),
                          );
                        },
                        child:
                        index==0?
                         Container(
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ):  Container(
                         color: Colors.yellow,
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,controller: ScrollController(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // Navigate to the second screen with the selected color
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => SecondScreen(),
                          //   ),
                          // );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child:
                            index==0?
                           Container(
                            height: 300,
                            width: 120,
                            color: Colors.green,
                            child: Center(
                              child: Text(
                                'Item $index',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                          : index==1?Container(
                            height: 300,
                            width: 120,
                            color: Colors.blue,
                            child: Center(
                              child: Text(
                                'Item $index',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ):Container(
                            height: 300,
                            width: 120,
                            color: Colors.purple,
                            child: Center(
                              child: Text(
                                'Item $index',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
               SizedBox(height: 10,),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // Navigate to the second screen with the selected color
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => SecondScreen(),
                          //   ),
                          // );
                        },
                        child: index==0?
                         Container(
                          color: Color.fromARGB(255, 54, 203, 244),
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ):  Container(
                         color: Color.fromARGB(255, 164, 147, 13),
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
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
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
 final Color selectedColor;
 final Color selectedColor1;

  SecondScreen({super.key,required this.selectedColor,required this.selectedColor1,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // Navigate to the second screen with the selected color
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SCREEN_ONE()
                            ),
                          );
                        },
                        child:
                        index==0?
                         Container(
                          color: selectedColor,
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ):  Container(
                         color:selectedColor1,
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,controller: ScrollController(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // Navigate to the second screen with the selected color
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SCREEN_ONE()
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child:
                            index==0?
                           Container(
                            height: 300,
                            width: 120,
                            color: Colors.grey,
                            child: Center(
                              child: Text(
                                'Item $index',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                          : index==1?Container(
                            height: 300,
                            width: 120,
                            color: Colors.grey,
                            child: Center(
                              child: Text(
                                'Item $index',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ):Container(
                            height: 300,
                            width: 120,
                            color: Colors.grey,
                            child: Center(
                              child: Text(
                                'Item $index',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
               SizedBox(height: 10,),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // Navigate to the second screen with the selected color
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>SCREEN_ONE (),
                            ),
                          );
                        },
                        child: index==0?
                         Container(
                          color:Colors.grey,
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ):  Container(
                         color: Colors.grey,
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
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
        ),
      ),
 
    );
  }
}