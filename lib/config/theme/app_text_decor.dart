import 'dart:ui';

import 'package:klob_kb_apps/config/theme/app_colors.dart';

class AppTextDecor {
  AppTextDecor._();

  static TextStyle osRegular18white = TextStyle(
    color: AppColors.white,
    fontSize: 18,
  );
  static TextStyle osRegular16white = TextStyle(
    color: AppColors.white,
    fontSize: 16,
  );
  static TextStyle osRegular14white = TextStyle(
    color: AppColors.white,
  );

  static TextStyle osSemiBold10White = TextStyle(
    color: AppColors.white,
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );

  static TextStyle osBold20White = TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle osBold14White = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}
