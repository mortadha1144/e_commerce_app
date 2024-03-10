import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/features/auth/providers/user_id_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileRepoProvider = Provider.autoDispose((ref) => ProfileRepo(ref));

class ProfileRepo {
  final Ref _ref;
  final CollectionReferenceMap _collection =
      FirebaseFirestore.instance.collection(FirebaseCollectionName.users);

  ProfileRepo(this._ref);

  Future<UserData> editUser(UserEdit user) async {
    final userId = _ref.read(userIdProvider);
    await _collection
        .doc(userId)
        .update(user.toJson());
    final docRef =  _collection.doc(userId);
    final userDoc = await docRef.get();
    return UserData.fromJson(userDoc.data()!);
  }
}
