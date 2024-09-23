import 'package:flutter/material.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/home_screen/custom_text.dart';
import 'package:furnitur_app/widgets/home_screen/future_categories.dart';
import 'package:furnitur_app/widgets/home_screen/future_products.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return FutureProducts();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizedConfig.defaultSize * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizedConfig.defaultSize * 2),
            const CustomText(title: "Browse by Categories"),
            SizedBox(height: SizedConfig.defaultSize * 2),
            const FutureCategories(),
            SizedBox(height: SizedConfig.defaultSize * 2),
            const Divider(
              height: 5,
            ),
            SizedBox(height: SizedConfig.defaultSize * 2),
            const CustomText(title: "Recommands for you"),
            SizedBox(height: SizedConfig.defaultSize * 2),
            FutureProducts(),
          ],
        ),
      ),
    );
  }
}
