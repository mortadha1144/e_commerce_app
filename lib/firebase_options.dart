// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBetX99i-pYU3AhDx9epHL-bRZFtzT1rPc',
    appId: '1:1056993020673:web:e69f138b5bb3af25e6a900',
    messagingSenderId: '1056993020673',
    projectId: 'e-commerce-app-f17dd',
    authDomain: 'e-commerce-app-f17dd.firebaseapp.com',
    storageBucket: 'e-commerce-app-f17dd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtZ3EHsMDbnoKIMZ4N6jSTm84VHbNwsZc',
    appId: '1:1056993020673:android:8b12912a3e78fdc1e6a900',
    messagingSenderId: '1056993020673',
    projectId: 'e-commerce-app-f17dd',
    storageBucket: 'e-commerce-app-f17dd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVPInMwv49y-Y_XjtoKg4Xqn4mmOgpyUw',
    appId: '1:1056993020673:ios:9e0ada88f66b612ee6a900',
    messagingSenderId: '1056993020673',
    projectId: 'e-commerce-app-f17dd',
    storageBucket: 'e-commerce-app-f17dd.appspot.com',
    androidClientId:
        '1056993020673-utvlqip6ub8d4gvd08mj4lobmuppk9r3.apps.googleusercontent.com',
    iosClientId:
        '1056993020673-b3j18fuelgdeglsmhvgi9d2ht2q6lbmu.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerceApp',
  );
}
