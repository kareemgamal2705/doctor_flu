import 'package:doctor_flu/core/style/colors_manager.dart';
import 'package:doctor_flu/core/theme/app_dimensions.dart';
import 'package:doctor_flu/core/theme/app_radius.dart';
import 'package:doctor_flu/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  final String btnTitle;
  final VoidCallback onPressed;
  final Color? btnColor;
  final TextStyle? textStyle;
  final double? height;
  final double? width;

  const CustomMainButton({
    super.key,
    required this.btnTitle,
    required this.onPressed,
    this.btnColor,
    this.textStyle,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? AppDimensions.buttonHeight,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor ?? ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(borderRadius: AppRadius.radius16),
        ),
        child: Text(
          btnTitle,
          style: textStyle ?? AppTextStyles.font16WhiteSemiBold,
        ),
      ),
    );
  }
}
