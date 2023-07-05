import 'package:e_commerce_app/Features/auth/presentation/views/complete_profile_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/forgot_password_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/login_success_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/otp_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/sign_in_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/sign_up_view.dart';
import 'package:e_commerce_app/Features/onboarding/presentation/views/onbording_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSignInView = '/signInView';
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kLoginSuccessView = '/loginSuccessView';
  static const kSignUpView = '/signUpView';
  static const kCompleteProfileView = '/completeProfileView';
  static const kOtpView = '/otpView';
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
      GoRoute(
        path: kLoginSuccessView,
        builder: (context, state) => const LoginSuccessView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kCompleteProfileView,
        builder: (context, state) => const CompleteProfileView(),
      ),
      GoRoute(
        path: kOtpView,
        builder: (context, state) => const OtpView(),
      ),
    ],
  );
}
