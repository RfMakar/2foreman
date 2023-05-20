import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  static final heading = GoogleFonts.lobster(fontSize: 30);
  static final heading2 = GoogleFonts.lobster(fontSize: 24);
  static final heading3 = GoogleFonts.lobster(fontSize: 20);
  static final heading4 = GoogleFonts.lobster(fontSize: 18);
  static final heading5 = GoogleFonts.lobster(fontSize: 12);
}

abstract class AppColor {
  static const color = Color.fromRGBO(67, 150, 251, 1);
  //static const color = Color.fromARGB(255, 255, 62, 78);
  static const color2 = Color.fromARGB(255, 255, 255, 255);
}
