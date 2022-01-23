// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class FutureThenPage extends StatefulWidget {
  const FutureThenPage({Key? key}) : super(key: key);

  @override
  _FutureThenPageState createState() => _FutureThenPageState();
}

class _FutureThenPageState extends State<FutureThenPage> {
  Future<void> getData() async {
    Future.delayed(Duration(seconds: 3), () {
      print("This message will print after 3 seconds");
    }).then((value) {
      Future.delayed(Duration(seconds: 2), () {
        print("This message will print after 2 seconds");
      });
    });

    print('This is a random message');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Click"),
          onPressed: () {
            getData();
          },
        ),
      ),
    );
  }
}
