import 'package:doctor_flu/core/style/colors_manager.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(fontSize: 11, color: ColorsManager.gray, height: 1.5),
        children: [
          TextSpan(text: 'By logging, you agree to our '),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyle(
              color: ColorsManager.blackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(text: ' and\n'),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyle(
              color: ColorsManager.blackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
