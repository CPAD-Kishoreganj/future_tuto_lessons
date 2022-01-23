// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';

class StreamPage extends StatelessWidget {
  StreamPage({Key? key}) : super(key: key);

  final StreamController streamController = StreamController();

  void getStreamData() async {
    streamController.stream.listen((event) {
      print(event);
    });

    for (int i = 0; i < 4; i++) {
      streamController.add("Your new message");
      await Future.delayed(Duration(seconds: 2), () {
        print("Read");
      });
    }
  }

  Stream myStream() async* {
    for (int i = 0; i < 10; i++) {
      yield i;
      await Future.delayed(Duration(seconds: 2));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          streamController.add("New message");
        },
        child: const Text("add"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: myStream(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 30),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
