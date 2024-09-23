import 'dart:convert';

import 'package:furnitur_app/models/product_model.dart';
import 'package:http/http.dart' as http;

Future<List<ProductModel>> fetchProducts() async {
  const String url = "https://5f210aa9daa42f001666535e.mockapi.io/api/products";
  final response = await http.get(Uri.parse(url));
  // print(response.body);
  if (response.statusCode == 200) {
    List<ProductModel> productModels = (json.decode(response.body) as List)
        .map((data) => ProductModel.fromJson(data))
        .toList();
    // print(productModels);
    return productModels;
  } else {
    // print(productModel);

    throw Exception('Failed to load products');
  }
}
