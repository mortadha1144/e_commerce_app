import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_info_payload.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';

abstract class UserRepo {
  Future<void> saveUserInfo({
    required UserId userId,
    required String displayName,
    required String? email,
  });
}

class UserRepoImpl extends UserRepo {
  @override
  Future<void> saveUserInfo({
    required UserId userId,
    required String displayName,
    required String? email,
  }) async {
    
      final userInfo = await FirebaseFirestore.instance
          .collection(
            FirebaseCollectionName.users,
          )
          .where(
            FirebaseFieldName.userId,
            isEqualTo: userId,
          )
          .limit(1)
          .get();
      // first check if the user already exists
      if (userInfo.docs.isNotEmpty) {
        // user already exists
        await userInfo.docs.first.reference.update({
          FirebaseFieldName.displayName: displayName,
          FirebaseFieldName.email: email ?? '',
        });
        return;
      }

      // user does not exist , create a new one
      final payload = UserInfoPayload(
        userId: userId,
        displayName: displayName,
        email: email,
      );

      await FirebaseFirestore.instance
          .collection(
            FirebaseCollectionName.users,
          )
          .add(payload);
  }
}
