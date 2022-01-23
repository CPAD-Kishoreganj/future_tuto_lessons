import 'package:flutter/material.dart';
import 'package:future_tuto_lessons/pages/stream_page.dart';
import 'pages/future_then_page.dart';
import 'screens/all_products_screen.dart';

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
      home: StreamPage(),
    );
  }
}
