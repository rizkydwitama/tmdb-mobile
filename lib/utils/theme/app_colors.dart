import 'package:flutter/material.dart';

class AppColors {
  static const mainColor = Color(0xFF06122D);
  static const accentColor = Color(0xFF3F55C6);
  static const blueColor = Color(0xFF3B82F6);
  static const redColor = Color(0xFFEF4444);
  static const yellowColor = Color(0xFFFACC15);
  static const blackColor = Color(0xFF020617);
  static const greenColor = Color(0xFF22C55E);
  static const whiteColor = Color(0xFFFFFFFF);

  // Text Colors
  static const textBlackColor = Color(0xFF1F2937);
  static const textWhiteColor = Color(0xFFFAFAFA);
  static const textSoftGrayColor = Color(0xFFEEEEEE);
  static const textGrayColor = Color(0xFF71747D);
  static const textDarkGrayColor = Color(0xFF555555);

  // Line Color
  static const lineWhiteColor = Color(0xFFD9D9D9);

  // Linear Colors
  static final loginLinearGradientColor = LinearGradient(
      colors: [
        blackColor.withOpacity(1.0),
        blackColor.withOpacity(0.7),
        blackColor.withOpacity(1.0),
        blackColor.withOpacity(1.0),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [
        0.0, 0.29, 0.54, 1.0
      ]
  );
}