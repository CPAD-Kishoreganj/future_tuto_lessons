// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class FutureThenPage extends StatefulWidget {
  const FutureThenPage({Key? key}) : super(key: key);

  @override
  _FutureThenPageState createState() => _FutureThenPageState();
}

class _FutureThenPageState extends State<FutureThenPage> {
  Future<void> getResult() async {
    Future.delayed(const Duration(seconds: 3), () {
      print("This is after 3 seconds");
    }).then(
      (value) => Future.delayed(const Duration(seconds: 2), () {
        print("This should comes last");
      }).catchError((error) {
        print(error);
      }),
    );

    print("This should run first");
  }

  Future<void> getData() async {
    await Future.delayed(const Duration(seconds: 3), () {
      print("This is after 3 seconds");
    });
    await Future.delayed(const Duration(seconds: 2), () {
      print("This is after 2 seconds");
    });

    print("Hello world");
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
          onPressed: () async {
            await getData();
            print('object');
          },
        ),
      ),
    );
  }
}
