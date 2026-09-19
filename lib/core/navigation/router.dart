import 'package:doctor_flu/core/navigation/routes.dart';
import 'package:doctor_flu/features/home/Presentation/view/home_view.dart';
import 'package:doctor_flu/features/onboarding/onboarding_view.dart';
import 'package:doctor_flu/features/sign_in/Presentation/view/sign_in_view.dart';
import 'package:doctor_flu/features/sign_up/Presentation/view/sign_up_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter appRouter = GoRouter(
    initialLocation: Routes.kOnboardingView,
    routes: [
      GoRoute(
        path: Routes.kOnboardingView,
        name: Routes.kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: Routes.kLoginView,
        name: Routes.kLoginView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: Routes.kSignupView,
        name: Routes.kSignupView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: Routes.kHomeView,
        name: Routes.kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
