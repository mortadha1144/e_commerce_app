import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static final FirebaseService _instance =
      FirebaseService._internal(FirebaseFirestore.instance);

  factory FirebaseService() => _instance;

  FirebaseService._internal(this.db);

  final FirebaseFirestore db;

  Future<void> add() async{
   await db.collection('collectionPath');
  }
}
