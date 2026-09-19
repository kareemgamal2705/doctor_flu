import 'package:doctor_flu/core/style/colors_manager.dart';
import 'package:doctor_flu/core/theme/app_dimensions.dart';
import 'package:flutter/material.dart';

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(child: Divider(color: ColorsManager.dividerColor)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Or sign in with',
                style: TextStyle(color: ColorsManager.gray, fontSize: 12),
              ),
            ),
            Expanded(child: Divider(color: ColorsManager.dividerColor)),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _socialCircle(
              iconWidget: const Icon(
                Icons.g_mobiledata,
                color: Colors.red,
                size: 28,
              ),
              onTap: () {},
            ),
            const SizedBox(width: 20),
            _socialCircle(
              iconWidget: const Icon(
                Icons.facebook,
                color: Colors.blue,
                size: 24,
              ),
              onTap: () {},
            ),
            const SizedBox(width: 20),
            _socialCircle(
              iconWidget: const Icon(
                Icons.apple,
                color: Colors.black,
                size: 24,
              ),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _socialCircle({
    required Widget iconWidget,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(25),
      child: CircleAvatar(
        radius: AppDimensions.socialIconRadius,
        backgroundColor: ColorsManager.lightBlue,
        child: iconWidget,
      ),
    );
  }
}
