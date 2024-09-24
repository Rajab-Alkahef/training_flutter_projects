import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/product_screen/product_screen_body.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen(
      {super.key, required this.productId, required this.products});

  final ProductModel products;

  final String productId;
  // String imageNetwork = categories.image ?? products.image;
  @override
  Widget build(BuildContext context) {
    // print(categoryId);

    return Scaffold(
      appBar: productScreenAppBar(context),
      body: ProductScreenBody(products: products, productId: productId),
    );
  }

  AppBar productScreenAppBar(BuildContext context) {
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
