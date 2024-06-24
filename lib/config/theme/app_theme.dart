import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';

class AppTheme {
  ThemeData get lightTheme {
    final theme = ThemeData(
      fontFamily: 'Poppins',
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryMain,
        onPrimary: AppColors.primarySurface,
        secondary: AppColors.secondaryMain,
        onSecondary: AppColors.secondarySurface,
        error: AppColors.dangerMain,
        onError: AppColors.dangerSurface,
        background: AppColors.scaffoldColor,
        onBackground: AppColors.neutral100,
        surface: AppColors.scaffoldColor,
        onSurface: AppColors.neutral100,
      ),
      scaffoldBackgroundColor: AppColors.scaffoldColor,
    );

    final textTheme = theme.textTheme.apply(
      displayColor: AppColors.neutral100,
      bodyColor: AppColors.neutral90,
    );

    const appBarTheme = AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.neutral10,
      foregroundColor: AppColors.primaryMain,
    );

    final inputDecorationTheme = theme.inputDecorationTheme.copyWith(
      hintStyle: const TextStyle(
        color: AppColors.neutral60,
      ).normal,
      errorStyle: const TextStyle(
        height: 0,
        fontSize: 0,
        color: Colors.transparent,
      ),
      counterStyle: const TextStyle(
        height: 0,
        fontSize: 0,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.neutral30,
        ),
        borderRadius: BorderRadius.circular(Sizes.p8),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.neutral30,
        ),
        borderRadius: BorderRadius.circular(Sizes.p8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.primaryBorder,
        ),
        borderRadius: BorderRadius.circular(Sizes.p8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.dangerMain,
        ),
        borderRadius: BorderRadius.circular(Sizes.p8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.dangerMain,
        ),
        borderRadius: BorderRadius.circular(Sizes.p8),
      ),
    );

    final elevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondaryMain,
        disabledBackgroundColor: AppColors.secondaryMainLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.p8),
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
        enableFeedback: false,
        textStyle: const TextStyle().semiBold.white,
      ),
    );

    final outlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.secondaryMain,
        textStyle: const TextStyle().semiBold.orange,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.p8),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.p16,
          vertical: Sizes.p8,
        ),
        side: const BorderSide(
          color: AppColors.secondaryMain,
          width: 2,
        ),
      ),
    );

    final bottomNavigationBarTheme = theme.bottomNavigationBarTheme.copyWith(
      selectedItemColor: AppColors.primaryMain,
      unselectedItemColor: AppColors.neutral50,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle().toSize(12),
      unselectedLabelStyle: const TextStyle().toSize(12),
      enableFeedback: false,
    );

    final tabBarTheme = TabBarTheme(
      labelColor: AppColors.primaryMain,
      unselectedLabelColor: AppColors.neutral50,
      labelStyle: const TextStyle().bold.toSize(12),
      unselectedLabelStyle: const TextStyle().bold.toSize(12),
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          color: AppColors.primaryMain,
          width: 2,
        ),
      ),
    );

    final dialogTheme = theme.dialogTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.p16),
      ),
    );

    return theme.copyWith(
      textTheme: textTheme,
      appBarTheme: appBarTheme,
      inputDecorationTheme: inputDecorationTheme,
      outlinedButtonTheme: outlinedButtonTheme,
      elevatedButtonTheme: elevatedButtonTheme,
      bottomNavigationBarTheme: bottomNavigationBarTheme,
      dialogTheme: dialogTheme,
      tabBarTheme: tabBarTheme,
      dividerColor: AppColors.neutral40,
    );
  }
}
