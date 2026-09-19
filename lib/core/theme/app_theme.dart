import 'package:doctor_flu/core/style/colors_manager.dart';
import 'package:doctor_flu/core/theme/app_radius.dart';
import 'package:doctor_flu/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: ColorsManager.whiteColor,
      primaryColor: ColorsManager.mainBlue,
      colorScheme: const ColorScheme.light(
        primary: ColorsManager.mainBlue,
        surface: ColorsManager.whiteColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorsManager.moreLightGray,
        hintStyle: AppTextStyles.font14LightGrayRegular,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.radius16,
          borderSide: const BorderSide(color: ColorsManager.formBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.radius16,
          borderSide: const BorderSide(color: ColorsManager.mainBlue),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.mainBlue,
          foregroundColor: ColorsManager.whiteColor,
          elevation: 0,
          textStyle: AppTextStyles.font16WhiteSemiBold,
          shape: RoundedRectangleBorder(borderRadius: AppRadius.radius16),
        ),
      ),
    );
  }
}
