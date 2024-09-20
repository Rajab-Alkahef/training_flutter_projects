import 'package:flutter/material.dart';
import 'package:furnitur_app/models/category_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen(
      {super.key, required this.categoryId, required this.categories});
  final CategoryModel categories;

  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Hero(tag: categoryId, child: Image.network(categories.image)));
  }
}
