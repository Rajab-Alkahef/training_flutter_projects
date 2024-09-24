import 'package:flutter/material.dart';
import 'package:furnitur_app/constants.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/product_screen/main_product_info.dart';
import 'package:furnitur_app/widgets/product_screen/product_details.dart';

class ProductScreenBody extends StatelessWidget {
  const ProductScreenBody({
    super.key,
    required this.products,
    required this.productId,
  });

  final ProductModel products;
  final String productId;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizedConfig.defaultSize;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 1.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultSize * 3),
            Row(
              children: [
                MainProductInfo(products: products),
                Expanded(
                  child: Hero(
                    tag: productId,
                    child: Image.network(
                      fit: BoxFit.cover,
                      products.image,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultSize * 3,
            ),
            ProductDetails(products: products),
          ],
        ),
      ),
    );
  }
}
