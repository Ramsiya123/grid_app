import 'package:flutter/material.dart';
import 'package:grid_app/colorapp/screen1.dart';

class TWO extends StatefulWidget {
  final Color selectedColor;
 final Color selectedColor1;

  TWO({super.key,required this.selectedColor,required this.selectedColor1,});

  @override
  State<TWO> createState() => _TWOState();
}

class _TWOState extends State<TWO> {
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
                              builder: (context) => ONE()
                            ),
                          );
                        },
                        child:
                        index==0?
                         Container(
                          color: widget.selectedColor,
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ):  Container(
                         color:widget.selectedColor1,
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
