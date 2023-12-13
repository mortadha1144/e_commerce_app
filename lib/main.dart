import 'package:e_commerce_app/Features/auth/data/repos/auth_repo.dart';
import 'package:e_commerce_app/Features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'package:e_commerce_app/Features/home/data/repos/home_repo.dart';
import 'package:e_commerce_app/Features/home/presentation/cubits/home_cubit/home_cubit.dart';
import 'package:e_commerce_app/bloc_observer.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/providers/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/utils/theme.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = const AppBlocObserver();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => AuthCubit(AuthRepo()),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(HomeRepo())..fetchHomeData(),
        ),
        // BlocProvider<PopularProductsCubit>(
        //   create: (context) =>
        //       PopularProductsCubit(HomeRepo())..fetchPopularProducts(),
        // ),
        // BlocProvider<SpecialOffersCubit>(
        //   create: (context) => SpecialOffersCubit(HomeRepo())..fetchSpecialOffers(),
        // ),
        // BlocProvider<CategoriesCubit>(
        //   create: (context) => CategoriesCubit(HomeRepo())..fetchCategories(),
        // ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: theme(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
