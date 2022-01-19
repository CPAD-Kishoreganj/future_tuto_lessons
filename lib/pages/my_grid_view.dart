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

  MyGridView({Key? key}) : super(key: key);

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
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.5 / 2,
          ),
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Container(
              color: colors[index],
            );
          },
        ),
      ),
    );
  }
}
