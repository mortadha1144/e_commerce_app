import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../constants.dart';

@lazySingleton
class FirebaseService {

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseService(this._firebaseAuth, this._firebaseFirestore);

  DocumentReference<Map<String, dynamic>> getProductRef({required String productId,required String innerCollection}) {
    final uId = _firebaseAuth.currentUser!.uid;
    return _firebaseFirestore
        .collection(kUsersCollection)
        .doc(uId)
        .collection(innerCollection)
        .doc(productId);
  }
}