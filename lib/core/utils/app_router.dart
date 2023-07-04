import 'package:e_commerce_app/Features/auth/presentation/views/forgot_password_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/sign_in_view.dart';
import 'package:e_commerce_app/Features/onboarding/presentation/views/onbording_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSignInView = '/SignInView';
  static const kForgotPasswordView = '/ForgotPasswordView';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBordingView(),
      ),
      GoRoute(
        path: kSignInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
      ),
    ],
  );
}
