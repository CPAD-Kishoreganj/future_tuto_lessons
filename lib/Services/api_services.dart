// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:future_tuto_lessons/models/product.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<Product>> getProducts() async {
    final allProductsUrl = Uri.parse('https://fakestoreapi.com/products');
    final response = await http.get(allProductsUrl);
    List<Product> allProducts = [];
    List body = json.decode(response.body);

    //print(body);

    for (var product in body) {
      allProducts.add(Product.fromJson(product));
    }
    //print(allProducts);
    return allProducts;
  }
}
