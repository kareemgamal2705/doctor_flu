import 'package:doctor_flu/core/navigation/router.dart';
import 'package:doctor_flu/core/theme/app_theme.dart';
import 'package:doctor_flu/features/sign_in/domain/sign_in_repo_impl.dart';
import 'package:doctor_flu/features/sign_in/manger/cubit/sign_in_cubit.dart';
import 'package:doctor_flu/features/sign_up/domain/signup_repo_impl.dart';
import 'package:doctor_flu/features/sign_up/manager/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SignInCubit(SignInRepoImpl())),
        BlocProvider(create: (context) => SignUpCubit(SignupRepoImpl())),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'Doctor Flu',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            routerConfig: AppRouter.appRouter,
          );
        },
      ),
    );
  }
}
