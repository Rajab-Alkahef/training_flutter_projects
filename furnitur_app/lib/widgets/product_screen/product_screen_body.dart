import 'package:flutter/material.dart';
import 'package:furnitur_app/constants.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/product_screen/main_product_info.dart';

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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 1.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: defaultSize * 3,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: defaultSize * 37.5,
                  width: defaultSize * 15,
                  child: MainProductInfo(products: products),
                ),
                Expanded(
                  child: Hero(
                    tag: productId,
                    child: Image.network(
                      products.image,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultSize * 3,
            ),
            Text(
              products.subtitle,
              style: TextStyle(
                  color: kTextColor,
                  fontSize: defaultSize * 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: defaultSize * 2,
            ),
            Text(
              textAlign: TextAlign.justify,
              products.description,
              style: TextStyle(
                color: kTextColor.withOpacity(0.7),
                fontSize: defaultSize * 1.5,
              ),
            ),
            SizedBox(
              height: defaultSize * 2,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: defaultSize * 4.5,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(kPrimaryColor),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
