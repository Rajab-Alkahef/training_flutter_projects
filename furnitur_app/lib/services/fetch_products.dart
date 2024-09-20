import 'dart:convert';

import 'package:furnitur_app/models/product_model.dart';
import 'package:http/http.dart' as http;

Future<List<ProductModel>> fetchProducts() async {
  const String url = "https://5f210aa9daa42f001666535e.mockapi.io/api/products";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    List<ProductModel> productModel = (json.decode(response.body) as List)
        .map((data) => ProductModel.fromJson(data))
        .toList();

    return productModel;
  } else {
    throw Exception('Failed to load products');
  }
}
