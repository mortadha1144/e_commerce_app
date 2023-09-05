import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../../firebase_options.dart';

class FirebaseInitialize {
  static Future<FirebaseInitialize> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    return FirebaseInitialize();
  }
}
