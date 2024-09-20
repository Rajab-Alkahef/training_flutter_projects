import 'package:flutter/material.dart';

class SizedConfig {
  static double desktop = 1200;
  static double tablet = 800;
  // static double defaultSize;
  // static Orientation orientation;
  static late double height, width, defaultSize;
  static late Orientation orientation;

  static init(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    orientation = MediaQuery.of(context).orientation;
    defaultSize =
        orientation == Orientation.landscape ? height * 0.024 : width * 0.024;

    // print(height);
    // print(width);
  }
}
