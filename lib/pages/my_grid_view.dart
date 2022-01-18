import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.black,
    Colors.amber,
    Colors.purple,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Container(
              // height: 100,
              // width: 100,
              decoration: BoxDecoration(
                color: colors.elementAt(index),
                borderRadius: BorderRadius.circular(20),
              ),
            );
          },
        ),
      ),
    );
  }
}
