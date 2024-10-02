import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyle {
  static const TextStyle appBarTextStyle = TextStyle(
      fontSize: 30, color: AppColors.accent, fontWeight: FontWeight.w700);
  static const TextStyle title = TextStyle(
      fontSize: 25, color: AppColors.accent, fontWeight: FontWeight.w600);
}
