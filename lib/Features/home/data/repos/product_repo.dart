import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProductRepo {
  FirebaseFirestore db = FirebaseFirestore.instance;

  User? user = FirebaseAuth.instance.currentUser;

  addCart() {
    var uid = db.collection('users').doc(user!.email).id;
  }
}
