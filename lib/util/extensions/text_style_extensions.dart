
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';

extension XTextStyle on TextStyle {
  /// Change weight
  TextStyle toWeight(FontWeight? fontWeight) =>
      copyWith(fontWeight: fontWeight);

  /// Change size
  TextStyle toSize(double? fontSize) => copyWith(fontSize: fontSize);

  /// Change color
  TextStyle toColor(Color? color) => copyWith(color: color);

  TextStyle get greyDark => toColor(AppColors.neutral100);

  TextStyle get grey => toColor(AppColors.neutral90);

  TextStyle get blue => toColor(AppColors.primaryMain);

  TextStyle get orange => toColor(AppColors.secondaryMain);

  TextStyle get red => toColor(AppColors.dangerMain);

  TextStyle get white => toColor(AppColors.neutral10);

  TextStyle get thin => toWeight(FontWeight.w100);

  TextStyle get extraLight => toWeight(FontWeight.w200);

  TextStyle get light => toWeight(FontWeight.w300);

  TextStyle get normal => toWeight(FontWeight.w400);

  TextStyle get medium => toWeight(FontWeight.w500);

  TextStyle get semiBold => toWeight(FontWeight.w600);

  TextStyle get bold => toWeight(FontWeight.w700);

  TextStyle get extraBold => toWeight(FontWeight.w800);

  TextStyle get extraBlack => toWeight(FontWeight.w900);
}
