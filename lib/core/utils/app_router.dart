import 'package:e_commerce_app/Features/auth/presentation/views/complete_profile_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/forgot_password_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/login_success_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/otp_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/sign_in_view.dart';
import 'package:e_commerce_app/Features/auth/presentation/views/sign_up_view.dart';
import 'package:e_commerce_app/Features/cart/presentation/views/cart_view.dart';
import 'package:e_commerce_app/Features/home/data/models/product_model.dart';
import 'package:e_commerce_app/Features/home/data/repos/product_repo.dart';
import 'package:e_commerce_app/Features/home/presentation/cubits/product_cubit/product_cubit.dart';
import 'package:e_commerce_app/Features/home/presentation/views/home_view.dart';
import 'package:e_commerce_app/Features/home/presentation/views/product_details_view.dart';
import 'package:e_commerce_app/Features/profile/presentation/views/profile_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../injection.dart';

abstract class AppRouter {
  static const kSignInView = '/signInView';
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kLoginSuccessView = '/loginSuccessView';
  static const kSignUpView = '/signUpView';
  static const kCompleteProfileView = '/completeProfileView';
  static const kOtpView = '/otpView';
  static const kHomeView = '/homeView';
  static const kProductDetailsView = '/productDetailsView';
  static const kCartView = '/cartView';
  static const kProfileView = '/profileView';

  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const OnBordingView(),
      // ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
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
        builder: (context, state) => CompleteProfileView(
          email: state.extra as String,
        ),
      ),
      GoRoute(
        path: kOtpView,
        builder: (context, state) => const OtpView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kProductDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<ProductCubit>(),
          child: ProductDetailsView(product: state.extra as ProductModel),
        ),
      ),

      GoRoute(
        path: kCartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
    ],
  );
}
