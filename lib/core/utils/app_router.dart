// This is super important - otherwise, we would throw away the whole widget tree when the provider is updated.
import 'dart:async';
import 'package:e_commerce_app/Features/auth/providers/is_logged_in_provider.dart';
import 'package:e_commerce_app/Features/auth/views/complete_profile_view.dart';
import 'package:e_commerce_app/Features/auth/views/forgot_password_page.dart';
import 'package:e_commerce_app/Features/auth/views/login_page.dart';
import 'package:e_commerce_app/Features/auth/views/login_success_view.dart';
import 'package:e_commerce_app/Features/auth/views/otp_view.dart';
import 'package:e_commerce_app/Features/auth/views/sign_up_page.dart';
import 'package:e_commerce_app/Features/auth/views/sign_up_view.dart';
import 'package:e_commerce_app/Features/cart/presentation/views/cart_view.dart';
import 'package:e_commerce_app/Features/chat/presentation/views/chat_view.dart';
import 'package:e_commerce_app/Features/choose_language/choose_your_language_page.dart';
import 'package:e_commerce_app/Features/favourite/views/favorite_view.dart';
import 'package:e_commerce_app/Features/home/presentation/views/bottom_navigation.dart';
import 'package:e_commerce_app/Features/home/presentation/views/home_view.dart';
import 'package:e_commerce_app/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/presentation/views/all_products_view.dart';
import 'package:e_commerce_app/Features/product/presentation/views/product_details_view.dart';
import 'package:e_commerce_app/Features/profile/presentation/views/profile_view.dart';
import 'package:e_commerce_app/core/utils/providers/settings_provider.dart';
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
  final bool isOnBoardingShown = ref.watch(settingsProvider).isOnBoardingShown;

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
                path: RoutesDocument.cartView,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const CartView(),
              ),
              GoRoute(
                path: RoutesDocument.allProductsView,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const AllProductsView(),
              ),
            ],
          ),
          GoRoute(
            path: RoutesDocument.favoriteView,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const FavoriteView(),
            redirect: redirect,
          ),
          GoRoute(
            path: RoutesDocument.chatView,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const ChatView(),
            redirect: redirect,
          ),
          GoRoute(
            path: RoutesDocument.profileView,
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const ProfileView(),
            redirect: redirect,
          ),
        ],
      ),
      GoRoute(
        path: RoutesDocument.chooseLanguage,
        builder: (context, state) => const ChooseYourLanguagePage(),
      ),
      GoRoute(
        path: RoutesDocument.signUp,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: RoutesDocument.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RoutesDocument.forgotPasswordView,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: RoutesDocument.loginSuccessView,
        builder: (context, state) => const LoginSuccessView(),
      ),
      GoRoute(
        path: RoutesDocument.completeProfileView,
        builder: (context, state) => const CompleteProfileView(),
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
  static const completeProfileView = '/completeProfileView';
  static const otpView = '/otpView';
  static const onBoardingView = '/onBoardingView';
  static const productDetailsView = 'productDetailsView';
  static const allProductsView = 'allProductsView';
  static const cartView = 'cartView';
  static const profileView = '/profileView';
  static const chooseLanguage = '/chooseLanguage';
  static const favoriteView = '/favoriteView';
  static const chatView = '/chatView';
}
