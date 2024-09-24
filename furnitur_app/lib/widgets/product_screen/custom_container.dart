import 'package:flutter/material.dart';
import 'package:furnitur_app/size_config.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.color,
    this.press,
  });
  final Color color;
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
      ),
    );
  }
}
