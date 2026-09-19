import 'package:doctor_flu/core/style/colors_manager.dart';
import 'package:doctor_flu/core/theme/app_radius.dart';
import 'package:doctor_flu/core/theme/app_text_styles.dart';
import 'package:doctor_flu/core/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.medical_services_outlined,
                size: 96,
                color: ColorsManager.mainBlue,
              ),
              const SizedBox(height: 24),
              const Text('Doctor Flu', style: AppTextStyles.font32BlueBold),
              const SizedBox(height: 12),
              const Text(
                'Book appointments faster',
                textAlign: TextAlign.center,
                style: AppTextStyles.font14GrayRegular,
              ),
              const SizedBox(height: 28),
              ElevatedButton(
                onPressed: () => context.go(Routes.kLoginView),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManager.mainBlue,
                  minimumSize: const Size(double.infinity, 52),
                  shape: RoundedRectangleBorder(
                    borderRadius: AppRadius.radius16,
                  ),
                ),
                child: const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
