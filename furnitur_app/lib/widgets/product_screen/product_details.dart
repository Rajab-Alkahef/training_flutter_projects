import 'package:flutter/material.dart';
import 'package:furnitur_app/constants.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/size_config.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.products,
  });

  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizedConfig.defaultSize;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        SizedBox(
          width: double.infinity,
          height: defaultSize * 4.5,
          child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(kPrimaryColor),
            ),
            onPressed: () {},
            child: Text(
              "Add to Cart",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: defaultSize * 1.8,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
