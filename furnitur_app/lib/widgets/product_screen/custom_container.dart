import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitur_app/size_config.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.color,
    this.press,
    required this.isSelected,
  });
  final Color color;
  final bool isSelected;
  final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: SizedConfig.defaultSize * 3,
        height: SizedConfig.defaultSize * 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizedConfig.defaultSize),
          color: color,
        ),
        child: isSelected
            ? Transform.scale(
                scale: 0.7,
                child: SvgPicture.asset(
                  // width: SizedConfig.defaultSize * 2,
                  // height: SizedConfig.defaultSize * 2,
                  "assets/icons/check.svg",
                  // fit: BoxFit.none,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
