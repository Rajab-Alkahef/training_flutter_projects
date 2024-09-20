import 'package:flutter/material.dart';
import 'package:furnitur_app/constants.dart';
import 'package:furnitur_app/size_config.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.fontSize,
    required this.title,
  });
  final String title;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: kTextColor,
          fontSize: fontSize ?? SizedConfig.defaultSize * 2,
          fontWeight: FontWeight.bold),
    );
  }
}
