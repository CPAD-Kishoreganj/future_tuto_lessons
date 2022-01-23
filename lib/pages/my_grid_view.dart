import 'package:flutter/material.dart';

import 'future_then_page.dart';

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

  List<String> imageUrl = [
    'imgaes/something.jpg',
    'imgaes/something.jpg',
    'imgaes/something.jpg',
    'imgaes/something.jpg',
    'imgaes/something.jpg',
    'imgaes/something.jpg',
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
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: colors.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                color: colors[0],
                child: const Center(
                  child: FutureThenPage(),
                ),
              );
            }
            final colorsData = colors[index];
            return Container(
              color: colorsData,
            );
          },
        ),
      ),
    );
  }
}
