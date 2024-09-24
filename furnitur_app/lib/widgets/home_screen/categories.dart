import 'package:flutter/material.dart';
import 'package:furnitur_app/models/category_model.dart';
import 'package:furnitur_app/screens/home_screen/category_screen.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/home_screen/categories_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, this.categories});
  final List<CategoryModel>? categories;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories!
            .map((e) => Padding(
                  padding: EdgeInsets.only(right: SizedConfig.defaultSize * 2),
                  child: Hero(
                      tag: "Category hero ${e.id.toString()}",
                      child: Material(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        borderRadius:
                            BorderRadius.circular(SizedConfig.defaultSize * 3),
                        color: Colors.transparent,
                        child: InkWell(
                            onTap: () {
                              // print(e.id.toString());
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryScreen(
                                    categoryId:
                                        "Category hero ${e.id.toString()}",
                                    categories: e,
                                  ),
                                ),
                              );
                            },
                            child: CategoriesCard(categoryModel: e)),
                      )),
                ))
            .toList(),
      ),
    );
  }
}
