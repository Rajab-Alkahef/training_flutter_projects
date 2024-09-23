// import 'package:flutter/material.dart';
// import 'package:furnitur_app/models/product_model.dart';
// import 'package:furnitur_app/screens/product_screen.dart';
// import 'package:furnitur_app/size_config.dart';
// import 'package:furnitur_app/widgets/home_screen/products_card.dart';

// class Products extends StatelessWidget {
//   const Products({super.key, this.products});
//   final List<ProductModel>? products;
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       physics: const BouncingScrollPhysics(),
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: products!
//             .map((e) => Padding(
//                   padding: EdgeInsets.only(right: SizedConfig.defaultSize * 2),
//                   child: Hero(
//                       tag: e.id.toString(),
//                       child: Material(
//                         clipBehavior: Clip.antiAliasWithSaveLayer,
//                         borderRadius:
//                             BorderRadius.circular(SizedConfig.defaultSize * 3),
//                         color: Colors.transparent,
//                         child: InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ProductScreen(
//                                     categoryId: e.id,
//                                     products: e,
//                                   ),
//                                 ),
//                               );
//                             },
//                             child: ProductsCard(productModel: e)),
//                       )),
//                 ))
//             .toList(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/screens/product_screen.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/home_screen/products_card.dart';

class Products extends StatelessWidget {
  const Products({super.key, required this.products});
  final List<ProductModel>? products;
  @override
  Widget build(BuildContext context) {
    // return GridView.builder(
    //   physics: const BouncingScrollPhysics(),

    //   shrinkWrap: true,
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2, // Number of columns in the grid
    //     mainAxisSpacing: 8, // Spacing between rows
    //     crossAxisSpacing: 8, // Spacing between   columns
    //   ),
    //   // scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
    //   itemCount: 10, // Number of items in the grid
    //   itemBuilder: (BuildContext context, int index) {
    //     return Container(
    //       color: Colors.blue[index * 100], // Assign a color to each item
    //       child: Center(
    //         child: Text(
    //           'Item $index',
    //           style: const TextStyle(
    //             fontSize: 20,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );

    return GridView.builder(
      // scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.75,
        crossAxisCount: 2, // number of items in each row
        mainAxisSpacing: 8.0, // spacing between rows
        crossAxisSpacing: 8.0, // spacing between columns
      ),
      padding: const EdgeInsets.all(8.0), // padding around the grid
      itemCount: products!.length, // total number of items
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 0),
          child: Hero(
            tag: "Products hero $index",
            child: Material(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.circular(SizedConfig.defaultSize * 3),
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(
                        categoryId: "Products hero $index",
                        products: products![index],
                      ),
                    ),
                  );
                },
                child: ProductsCard(productModel: products![index]),
              ),
            ),
          ),
        );
      },
    );
  }
}
