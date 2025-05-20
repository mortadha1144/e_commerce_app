import 'package:e_commerce_app/features/auth/views/authentication_provider.dart';
import 'package:e_commerce_app/features/auth/views/forget_password/forget_password_reset_password_page.dart';
import 'package:e_commerce_app/features/auth/views/forget_password/forgot_password_verify_otp_page.dart';
import 'package:e_commerce_app/features/profile/views/update_profile_view.dart';
import 'package:e_commerce_app/features/auth/views/forget_password/forgot_password_page.dart';
import 'package:e_commerce_app/features/auth/views/login_page.dart';
import 'package:e_commerce_app/features/auth/views/login_success_view.dart';
import 'package:e_commerce_app/features/auth/views/verify_otp_page.dart';
import 'package:e_commerce_app/features/auth/views/registeration_page.dart';
import 'package:e_commerce_app/features/cart/views/cart_view.dart';
import 'package:e_commerce_app/features/favorite/views/favorite_view.dart';
import 'package:e_commerce_app/features/home/views/bottom_navigation.dart';
import 'package:e_commerce_app/features/home/views/home_view.dart';
import 'package:e_commerce_app/features/onboarding/views/onboarding_view.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:e_commerce_app/features/product/views/paginated_products_grid_view.dart';
import 'package:e_commerce_app/features/product/views/product_details_view.dart';
import 'package:e_commerce_app/features/profile/views/profile_view.dart';
import 'package:e_commerce_app/core/data/models/named_object.dart';
import 'package:e_commerce_app/core/data/providers/preference_helper_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
// We need to have access to the previous location of the router. Otherwise, we would start from '/' on rebuild.
GoRouter? _previousRouter;

// TODO: replace with auto_route

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  final bool isOnBoardingShown =
      ref.read(preferenceHelperProvider).isOnboardingShown;

  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    final authenticationState = ref.read(authenticationProvider);
    final isLoggedIn = authenticationState.token != null;
    // if` the user is not logged in, they need to login
    final bool loggingIn = state.matchedLocation == RoutesDocument.login;

    // if (local == null) {
    //   return RoutesDocument.chooseLanguage;
    // }

    if (!isOnBoardingShown) {
      return RoutesDocument.onBoardingView;
    }

    if (!isLoggedIn) {
      return loggingIn ? null : RoutesDocument.login;
    }

    // if the user is logged in but still on the login page, send them to
    // the home page
    if (loggingIn) {
      return RoutesDocument.homeView;
    }

    // no need to redirect at all
    return null;
  }

  return GoRouter(
    initialLocation:
        _previousRouter?.routerDelegate.currentConfiguration.fullPath,
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) =>
            BottomNavigationBarScaffold(child: child),
        routes: [
          GoRoute(
            path: RoutesDocument.homeView,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const HomeView(),
            redirect: redirect,
            routes: [
              GoRoute(
                path: RoutesDocument.productDetailsView,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) =>
                    ProductDetailsView(product: state.extra as ProductModel),
              ),
              GoRoute(
                path: RoutesDocument.paginatedProductsGridView,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) {
                  return PaginatedProductsGridView(
                    category: state.extra as NamedObject?,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: RoutesDocument.cartView,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const CartView(),
            redirect: redirect,
          ),
          GoRoute(
            path: RoutesDocument.favoriteView,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const FavoriteView(),
            redirect: redirect,
          ),
          GoRoute(
              path: RoutesDocument.profileView,
              parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => const ProfileView(),
              redirect: redirect,
              routes: [
                GoRoute(
                  path: RoutesDocument.updateProfileView,
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) => const UpdateProfileView(),
                ),
              ]),
        ],
      ),
      // GoRoute(
      //   path: RoutesDocument.chooseLanguage,
      //   builder: (context, state) => const ChooseYourLanguagePage(),
      // ),
      GoRoute(
        path: RoutesDocument.signUp,
        builder: (context, state) => const RegistrationPage(),
      ),
      GoRoute(
        path: RoutesDocument.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RoutesDocument.forgotPasswordView,
        builder: (context, state) => const ForgotPasswordPage(),
      ),
      GoRoute(
        path: RoutesDocument.forgotPasswordVerifyOtpView,
        builder: (context, state) => ForgotPasswordVerifyOtpPage(
          phoneNumber: state.extra as String,
        ),
      ),
      GoRoute(
        path: RoutesDocument.forgotPasswordResetPasswordView,
        builder: (context, state) {
          final args = state.extra as ResetPasswordPageArgs;
          return ForgetPasswordResetPasswordPage(
            phoneNumber: args.phoneNumber,
            resetToken: args.resetToken,
          );
        },
      ),
      GoRoute(
        path: RoutesDocument.loginSuccessView,
        builder: (context, state) => const LoginSuccessView(),
      ),
      GoRoute(
        path: RoutesDocument.otpView,
        builder: (context, state) =>
            VerifyOtpPage(phoneNumber: state.extra as String),
      ),
      GoRoute(
        path: RoutesDocument.onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
}

class RoutesDocument {
  static const homeView = '/';
  // static const homeViewBody = '/homeViewBody';
  static const login = '/login';
  static const signUp = '/signUp';
  static const welcome = '/welcome';
  static const forgotPasswordView = '/forgotPasswordView';
  static const loginSuccessView = '/loginSuccessView';
  static const otpView = '/otpView';
  static const onBoardingView = '/onBoardingView';
  static const productDetailsView = 'productDetailsView';
  static const paginatedProductsGridView = 'paginatedProductsGridView';
  static const cartView = '/cartView';
  static const profileView = '/profileView';
  static const updateProfileView = 'updateProfileView';
  // static const chooseLanguage = '/chooseLanguage';
  static const favoriteView = '/favoriteView';
  static const forgotPasswordVerifyOtpView = '/forgotPasswordVerifyOtpView';
  static const forgotPasswordResetPasswordView =
      '/forgotPasswordResetPasswordView';
}
