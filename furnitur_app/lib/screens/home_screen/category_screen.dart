import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furnitur_app/models/category_model.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/size_config.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
    required this.categoryId,
    required this.categories,
  });
  final CategoryModel categories;

  final String categoryId;
  // String imageNetwork = categories.image ?? products.image;
  @override
  Widget build(BuildContext context) {
    // print(categoryId);

    return Scaffold(
      appBar: categoryScreenAppBar(context),
      body: Column(
        children: [
          SizedBox(
            height: SizedConfig.defaultSize * 3,
          ),
          Row(
            children: [
              Hero(
                tag: categoryId,
                child: Image.network(categories.image),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar categoryScreenAppBar(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: SizedConfig.defaultSize * 2),
        child: IconButton(
          // padding: EdgeInsets.only(left: SizedConfig.defaultSize * 2),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow-long-left.svg",
            // fit: BoxFit.fill,
            height: SizedConfig.defaultSize * 2,
            // width: SizedConfig.defaultSize * 3,
          ),
        ),
      ),
      actions: [
        IconButton(
          // style: const ButtonStyle(
          //     backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/bag.svg",
            height: SizedConfig.defaultSize * 2.4,
          ),
        ),
        SizedBox(width: SizedConfig.defaultSize),
      ],
    );
  }
}
