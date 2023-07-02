import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import 'core/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: theme(),
    );
  }

  
}
