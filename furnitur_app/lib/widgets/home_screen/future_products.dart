import 'package:flutter/material.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/services/fetch_products.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/home_screen/products.dart';

class FutureProducts extends StatelessWidget {
  FutureProducts({
    super.key,
  });
  List<ProductModel>? prod = [productModelDemo, productModelDemo];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Products(
              products: snapshot.data,
            );
          } else if (snapshot.hasError) {
            // print(snapshot.data);

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
