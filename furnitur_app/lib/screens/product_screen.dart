import 'package:flutter/material.dart';
import 'package:furnitur_app/models/category_model.dart';
import 'package:furnitur_app/models/product_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen(
      {super.key, required this.categoryId, this.categories, this.products});
  final CategoryModel? categories;
  final ProductModel? products;

  final String categoryId;
  // String imageNetwork = categories.image ?? products.image;
  @override
  Widget build(BuildContext context) {
    print(categoryId);

    return Scaffold(
        body: Hero(
            tag: categoryId,
            child: Image.network(categories?.image ?? products!.image)));
  }
}
