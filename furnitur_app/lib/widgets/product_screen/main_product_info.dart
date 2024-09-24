import 'package:flutter/material.dart';
import 'package:furnitur_app/constants.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/product_screen/custom_container.dart';

class MainProductInfo extends StatelessWidget {
  const MainProductInfo({
    super.key,
    required this.products,
  });

  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizedConfig.defaultSize;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          products.category.toUpperCase(),
          style: TextStyle(
            color: kTextColor.withOpacity(0.7),
            fontSize: defaultSize * 2,
          ),
        ),
        SizedBox(height: defaultSize),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          // maxLines: 2,
          products.title,
          style: TextStyle(
              color: kTextColor,
              fontSize: defaultSize * 3,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: defaultSize * 2),
        Text(
          "Form",
          style: TextStyle(
            color: kTextColor.withOpacity(0.7),
            fontSize: defaultSize * 1.5,
          ),
        ),
        Text(
          "\$${products.price}",
          style: TextStyle(
            color: kTextColor,
            fontSize: defaultSize * 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: defaultSize * 2),
        Text(
          "Available colors",
          style: TextStyle(
            color: kTextColor.withOpacity(0.7),
            fontSize: defaultSize * 1.6,
          ),
        ),
        SizedBox(
          height: defaultSize,
        ),
        Row(
          children: [
            const CustomContainer(
              color: Color(0xff839f82),
            ),
            SizedBox(
              width: defaultSize,
            ),
            const CustomContainer(
              color: Color(0xffd1d2d4),
            ),
            SizedBox(
              width: defaultSize,
            ),
            const CustomContainer(
              color: Color(0xff2c2d2f),
            ),
          ],
        )
      ],
    );
  }
}
