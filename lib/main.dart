import 'package:flutter/material.dart';
import 'package:future_tuto_lessons/screens/all_products_screen.dart';

import 'pages/my_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyGridView(),
    );
  }
}
