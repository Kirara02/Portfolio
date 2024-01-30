import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xffF2F5F9);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color black2 = Color(0xff1A1003);
  static const Color dark = Color(0xff0B0909);
  static const Color grey = Color(0xffE1E8EF);
  static const Color grey2 = Color(0xffF2F7FC);
  static const Color grey3 = Color(0xffFFEBD1);
  // static const Color grey4 = Color(0xffF2F7FC);
  static const Color orange = Color(0xffFF9C1A);
  static const Color red = Color(0xffFF9C1A);

  static const LinearGradient customGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    colors: [
      AppColors.orange,
      AppColors.red,
    ],
  );
}
