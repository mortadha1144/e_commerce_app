import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';

typedef DocRef = DocumentReference<Map<String, dynamic>>;

typedef DocSnapshot = DocumentSnapshot<Map<String, dynamic>>;
typedef QSnapshot = QuerySnapshot<Map<String, dynamic>>;

typedef ProductId = String;

typedef UserId = String;

typedef CollectionReferenceMap = CollectionReference<Map<String, dynamic>>;

typedef DocumentReferenceMap = DocumentReference<Map<String, dynamic>>;

typedef QueryMap = Query<Map<String, dynamic>>;

typedef QueryBuilderMap = FirestoreQueryBuilderSnapshot<Map<String, dynamic>>;
