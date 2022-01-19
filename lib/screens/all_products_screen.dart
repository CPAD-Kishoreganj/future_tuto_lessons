import 'package:flutter/material.dart';
import 'package:future_tuto_lessons/Services/api_services.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
      ),
      body: FutureBuilder(
        future: ApiServices().getProducts(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    title: Text(snapshot.data[index]['title']),
                    tileColor: Colors.amberAccent,
                    leading: Image.network(
                      snapshot.data[index]['image'],
                      fit: BoxFit.cover,
                      width: 40,
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
