import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyle {
  static const TextStyle appBarStyle = TextStyle(
      fontSize: 30, color: AppColors.accent, fontWeight: FontWeight.w700);
  static const TextStyle titleStyle = TextStyle(
      fontSize: 25, color: AppColors.accent, fontWeight: FontWeight.w600);
}
