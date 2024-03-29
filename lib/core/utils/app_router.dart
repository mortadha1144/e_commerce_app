// This is super important - otherwise, we would throw away the whole widget tree when the provider is updated.
import 'dart:async';
import 'package:e_commerce_app/Features/profile/views/update_profile_view.dart';
import 'package:e_commerce_app/features/auth/providers/is_logged_in_provider.dart';
import 'package:e_commerce_app/features/auth/views/forgot_password_page.dart';
import 'package:e_commerce_app/features/auth/views/login_page.dart';
import 'package:e_commerce_app/features/auth/views/login_success_view.dart';
import 'package:e_commerce_app/features/auth/views/otp_view.dart';
import 'package:e_commerce_app/features/auth/views/sign_up_page.dart';
import 'package:e_commerce_app/features/cart/views/cart_view.dart';
import 'package:e_commerce_app/features/choose_language/choose_your_language_page.dart';
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
import 'package:e_commerce_app/core/data/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
// We need to have access to the previous location of the router. Otherwise, we would start from '/' on rebuild.
GoRouter? _previousRouter;

final routerProvider = Provider.autoDispose((ref) {
  final bool loggedIn = ref.watch(isLoggedInProvider);
  final local = ref.watch(settingsProvider).locale;
  final bool isOnBoardingShown =
      ref.read(preferenceHelperProvider).isOnboardingShown;

  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    // if` the user is not logged in, they need to login
    final bool loggingIn = state.matchedLocation == RoutesDocument.login;

    if (local == null) {
      return RoutesDocument.chooseLanguage;
    }

    if (!isOnBoardingShown) {
      return RoutesDocument.onBoardingView;
    }

    if (!loggedIn) {
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
      GoRoute(
        path: RoutesDocument.chooseLanguage,
        builder: (context, state) => const ChooseYourLanguagePage(),
      ),
      GoRoute(
        path: RoutesDocument.signUp,
        builder: (context, state) => const SignUpPage(),
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
        path: RoutesDocument.loginSuccessView,
        builder: (context, state) => const LoginSuccessView(),
      ),
      GoRoute(
        path: RoutesDocument.otpView,
        builder: (context, state) => const OtpView(),
      ),
      GoRoute(
        path: RoutesDocument.onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
});

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
  static const chooseLanguage = '/chooseLanguage';
  static const favoriteView = '/favoriteView';
}
