import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData buildThemeData() {
    return ThemeData(
      primaryColor: AppColors.mainColor,
      fontFamily: 'Inter',
    );
  }
}