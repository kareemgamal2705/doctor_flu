import 'package:doctor_flu/core/navigation/routes.dart';
import 'package:doctor_flu/core/shared/main_button.dart';
import 'package:doctor_flu/core/shared/text_field.dart';
import 'package:doctor_flu/core/style/colors_manager.dart';
import 'package:doctor_flu/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: ColorsManager.whiteColor,
        foregroundColor: ColorsManager.blackColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Welcome back', style: AppTextStyles.font24BlueBold),
              const SizedBox(height: 8),
              const Text(
                'Please enter your details to continue',
                style: AppTextStyles.font14GrayRegular,
              ),
              const SizedBox(height: 32),
              CustomTextField(
                controller: emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 24),
              CustomMainButton(
                btnTitle: 'Sign In',
                onPressed: () => context.go(Routes.kHomeView),
              ),
              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () => context.go(Routes.kSignupView),
                  child: const Text('Create account'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
