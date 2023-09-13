import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants.dart';

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final firebaseFirestoreProvider = Provider((ref) => FirebaseFirestore.instance);

final firebaseServiceProvider = Provider(
  (ref) => FirebaseService(
    ref.read(firebaseAuthProvider),
    ref.read(firebaseFirestoreProvider),
  ),
);

class FirebaseService {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseService(this._firebaseAuth, this._firebaseFirestore);

  DocumentReference<Map<String, dynamic>> getProductRef(
      {required String productId, required String innerCollection}) {
    final uId = _firebaseAuth.currentUser!.uid;
    return _firebaseFirestore
        .collection(kUsersCollection)
        .doc(uId)
        .collection(innerCollection)
        .doc(productId);
  }
}
