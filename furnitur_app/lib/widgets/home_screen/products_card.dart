import 'package:flutter/material.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/home_screen/custom_text.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    SizedConfig.init(context);
    return SizedBox(
      width: SizedConfig.defaultSize * 20.5,
      child: AspectRatio(
        aspectRatio: 0.83,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: SizedConfig.defaultSize * 20.5,
              height: SizedConfig.defaultSize * 18,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(SizedConfig.defaultSize * 3),
                color: const Color(0xfff1f5f7),
              ),
              // elevation: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text(
                  //   categoryModel.title,
                  //   style: TextStyle(
                  //       color: kTextColor,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: SizedConfig.defaultSize * 2.2),
                  // ),
                  CustomText(
                    title: productModel.title,
                    fontSize: SizedConfig.defaultSize * 1.8,
                  ),
                  Text(
                    "\$${productModel.price}",
                    style: const TextStyle(color: Color(0xffa5aaab)),
                  ),
                  SizedBox(
                    height: SizedConfig.defaultSize * 1.5,
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AspectRatio(
                aspectRatio: 1.125,
                child: FadeInImage.assetNetwork(
                    placeholderScale: 1.5,
                    placeholder: "assets/spinner.gif",
                    image: productModel.image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
