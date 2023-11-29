import 'dart:async';

import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/core/utils/shared_preference/preferences.dart';

class SharedPreferenceHelper {
  final Preference _sharedPreference;

  const SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------
  Future<void> saveAuthToken(String authToken) async {
    await _sharedPreference.setString(PrefKeys.authToken, authToken);
  }

  String? get authToken {
    return _sharedPreference.getString(PrefKeys.authToken);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPreference.remove(PrefKeys.authToken);
  }

  Future<void> saveIsLoggedIn(bool value) async {
    await _sharedPreference.setBool(PrefKeys.isLoggedIn, value);
  }

  bool get isLoggedIn {
    return _sharedPreference.getBool(PrefKeys.isLoggedIn) ?? false;
  }

  Future<void> clear() async {
    await _sharedPreference.clear();
  }

  Future<void> setUser(UserModel value) async {
    await _sharedPreference.setString(PrefKeys.user, value.encode());
    
  }
 

  // UserModel? getUser() {
  //   final value = _sharedPreference.getString(PrefKeys.user);
  //   return value == null ? null : UserModel.decode(value);
  // }

  Future<void> clearUser() async {
    await _sharedPreference.remove(PrefKeys.user);
  }
}

mixin PrefKeys {
  static const String isLoggedIn = "isLoggedIn";
  static const String authToken = "authToken";
  static const String user = 'user';
  static const String authentication = 'authentication';
  static const String settings = 'settings';
  static const String cart = 'cartItems';
  static const String favoriteItems = 'favoriteItems';
}
