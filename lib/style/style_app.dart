import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static var heading = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static var heading2 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static var heading3 = const TextStyle(fontSize: 20);
  static var heading4 = const TextStyle(fontSize: 18);
  static var heading5 = const TextStyle(fontSize: 14);
}

abstract class AppColor {
  static const color = Color.fromRGBO(67, 150, 251, 1);
  static const color2 = Color.fromARGB(255, 255, 255, 255);
}
