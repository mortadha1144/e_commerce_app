import 'package:e_commerce_app/app.dart';
import 'package:e_commerce_app/core/data/shared_preferences/shared_preferences_provider.dart';
import 'package:e_commerce_app/core/developer/developer_provider_scope_overrides.dart';
import 'package:e_commerce_app/core/utils/config.dart';
import 'package:e_commerce_app/features/auth/data/repositories/authentication_repository.dart';
import 'package:e_commerce_app/features/auth/data/repositories/authentication_repository.mock.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
  );

  final overrides = await mainProviderScopeOverrides();
  runApp(
    ProviderScope(
      overrides: overrides,
      child: const MyApp(),
    ),
  );
}

Future<List<Override>> mainProviderScopeOverrides() async {
  final preferences = await SharedPreferences.getInstance();
  return [
    sharedPreferencesProvider.overrideWithValue(preferences),
    if (useMock) ...mockProviderScopeOverrides(),
  ];
}
