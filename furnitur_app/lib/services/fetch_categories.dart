import 'dart:convert';
import 'package:furnitur_app/models/category_model.dart';
import 'package:http/http.dart' as http;

Future<List<CategoryModel>> fetchCategories() async {
  const String url =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    List<CategoryModel> categoriesmodel = (json.decode(response.body) as List)
        .map((data) => CategoryModel.fromJson(data))
        .toList();

    return categoriesmodel;
  } else {
    throw Exception('Failed to load products');
  }
}

CategoryModel categoryModel = CategoryModel(
    id: "1",
    title: "Armchair",
    image: "https://i.imgur.com/JqKDdxj.png",
    numOfProducts: 100);
