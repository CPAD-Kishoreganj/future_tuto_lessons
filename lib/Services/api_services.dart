// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  Future getProducts() async {
    final allProductsUrl = Uri.parse('https://fakestoreapi.com/products');
    final response = await http.get(allProductsUrl);
    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }
}
