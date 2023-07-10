import 'package:dio/dio.dart';
import 'package:e_commerce_app/Features/auth/data/repos/auth_repo_impl.dart';
import 'package:e_commerce_app/Features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'package:e_commerce_app/Features/home/data/repos/home_repo.dart';
import 'package:e_commerce_app/Features/home/presentation/cubits/popular_cubit/popular_products_cubit.dart';
import 'package:e_commerce_app/bloc_observer.dart';
import 'package:e_commerce_app/core/utils/api_service.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/theme.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = const AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => AuthCubit(AuthRepoImp()),
        ),
        BlocProvider<PopularProductsCubit>(
          create: (context) => PopularProductsCubit(HomeRepo())..fetchPopularProducts(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: theme(),
      ),
    );
  }
}
