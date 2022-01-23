import 'package:flutter/material.dart';
import 'package:future_tuto_lessons/Services/api_services.dart';
import 'package:future_tuto_lessons/models/product.dart';

class AllProductsScreen extends StatefulWidget {
  const AllProductsScreen({Key? key}) : super(key: key);

  @override
  State<AllProductsScreen> createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {
  late Future<List<Product>> allProducts;

  @override
  void initState() {
    super.initState();
    allProducts = ApiServices().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
      ),
      body: FutureBuilder(
        future: allProducts,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                Product product = snapshot.data![index];
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    title: Text(product.title),
                    leading: Image.network(product.image),
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
