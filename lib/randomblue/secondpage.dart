import 'dart:math';
import 'package:flutter/material.dart';

class RANDOM extends StatefulWidget {
  final int number;

  RANDOM({Key? key, required this.number}) : super(key: key);

  @override
  State<RANDOM> createState() => _RANDOMState();
}

class _RANDOMState extends State<RANDOM> {
  late List<Color> containerColors;
  late List<int> availableIndices;

  @override
  void initState() {
    super.initState();
    containerColors = List.generate(widget.number, (index) => Colors.transparent);
    availableIndices = List.generate(widget.number, (index) => index);
    _setNextBlueContainer();
  }

  void _setNextBlueContainer() {
    if (availableIndices.isNotEmpty) {
      final blueIndex = availableIndices.removeAt(Random().nextInt(availableIndices.length));
      containerColors[blueIndex] = Colors.blue;
    }
  }

  void changeContainerColor(int index) {
    setState(() {
      if (containerColors[index] == Colors.blue) {
        containerColors[index] = Colors.green;
        _setNextBlueContainer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemCount: widget.number,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => changeContainerColor(index),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          color: containerColors[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
