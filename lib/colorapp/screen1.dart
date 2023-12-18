import 'package:flutter/material.dart';
import 'package:grid_app/colorapp/screen2.dart';

class ONE extends StatefulWidget {
  const ONE({Key? key}) : super(key: key);

  @override
  State<ONE> createState() => _ONEState();
}

class _ONEState extends State<ONE> {
//    final Color selectedColor;
//  final Color selectedColor1;
//   Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
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
                              builder: (context) => TWO(selectedColor: index == 0 ? Colors.red : Colors.grey,selectedColor1:index == 1 ? Colors.yellow : Colors.grey,),
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
              
          ],
        ),
      ),
    );
  }
}
