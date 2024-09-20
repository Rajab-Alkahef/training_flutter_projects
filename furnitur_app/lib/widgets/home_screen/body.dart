import 'package:flutter/material.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/home_screen/custom_text.dart';
import 'package:furnitur_app/widgets/home_screen/future_categories.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizedConfig.defaultSize * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizedConfig.defaultSize * 2),
            const CustomText(title: "Browse by Categories"),
            SizedBox(height: SizedConfig.defaultSize * 2),
            const FutureCategories()
          ],
        ),
      ),
    );
  }
}
