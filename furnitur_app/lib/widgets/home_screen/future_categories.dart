import 'package:flutter/material.dart';
import 'package:furnitur_app/services/fetch_categories.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/home_screen/categories.dart';

class FutureCategories extends StatelessWidget {
  const FutureCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchCategories(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Categories(
              categories: snapshot.data,
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                "Error Loading Data",
                style: TextStyle(
                    fontSize: SizedConfig.defaultSize * 2,
                    fontWeight: FontWeight.bold),
              ),
            );
          } else {
            return Center(child: Image.asset(scale: 1.5, "assets/ripple.gif"));
          }
        });
  }
}
