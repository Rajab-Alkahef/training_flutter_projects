import 'package:flutter/material.dart';
import 'package:furnitur_app/constants.dart';
import 'package:furnitur_app/models/product_model.dart';
import 'package:furnitur_app/size_config.dart';
import 'package:furnitur_app/widgets/product_screen/custom_container.dart';

class MainProductInfo extends StatefulWidget {
  const MainProductInfo({
    super.key,
    required this.products,
  });

  final ProductModel products;

  @override
  State<MainProductInfo> createState() => _MainProductInfoState();
}

class _MainProductInfoState extends State<MainProductInfo> {
  int selectIndex = 0;

  List<bool> colorSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizedConfig.defaultSize;
    return SizedBox(
      height: SizedConfig.orientation == Orientation.landscape
          ? defaultSize * 23.5
          : defaultSize * 37.5,
      width: SizedConfig.orientation == Orientation.landscape
          ? defaultSize * 45
          : defaultSize * 15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.products.category.toUpperCase(),
            style: TextStyle(
              color: kTextColor.withOpacity(0.7),
              fontSize: defaultSize * 1.8,
            ),
          ),
          SizedBox(height: defaultSize),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            // maxLines: 2,
            widget.products.title,
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
            "\$${widget.products.price}",
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
              CustomContainer(
                press: () {
                  setState(() {
                    colorSelected = [true, false, false];
                  });
                },
                color: const Color(0xff839f82),
                isSelected: colorSelected[0],
              ),
              SizedBox(
                width: defaultSize,
              ),
              CustomContainer(
                press: () {
                  setState(() {
                    colorSelected = [false, true, false];
                  });
                },
                isSelected: colorSelected[1],
                color: const Color(0xffd1d2d4),
              ),
              SizedBox(
                width: defaultSize,
              ),
              CustomContainer(
                press: () {
                  setState(() {
                    colorSelected = [false, false, true];
                  });
                },
                isSelected: colorSelected[2],
                color: const Color(0xff2c2d2f),
              ),
            ],
          )
        ],
      ),
    );
  }
}
