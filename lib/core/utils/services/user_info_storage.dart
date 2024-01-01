import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';

typedef QuerySnapshotFuture = Future<QuerySnapshot<Map<String, dynamic>>>;

abstract class UserRepo {
  Future<UserModel> saveUserInfo({
    required UserId userId,
    required String displayName,
    required String? email,
  });

  Future<UserModel> getUser({
    required UserId userId,
  });
  Future<UserModel> updateUserInfo({
    required UserId userId,
    required UserModel user,
  });

  Future<void> addNewUser({required UserModel user});

  QuerySnapshotFuture getUserInfo(UserId userId) {
    return FirebaseFirestore.instance
        .collection(
          FirebaseCollectionName.users,
        )
        .where(
          FirebaseFieldName.userId,
          isEqualTo: userId,
        )
        .limit(1)
        .get();
  }
}

class UserRepoImpl extends UserRepo {
  @override
  Future<UserModel> saveUserInfo({
    required UserId userId,
    required String displayName,
    required String? email,
  }) async {
    final userInfo = await getUserInfo(userId);
    // first check if the user already exists
    if (userInfo.docs.isNotEmpty) {
      // user already exists
      await userInfo.docs.first.reference.update({
        FirebaseFieldName.displayName: displayName,
        FirebaseFieldName.email: email ?? '',
      });
      final user = await getUser(userId: userId);
      return user;
    }

    // user does not exist , create a new one
    final newUser = UserModel(
      userId: userId,
      displayName: displayName,
      email: email,
    );

    await addNewUser(user: newUser);

    return newUser;
  }

  @override
  Future<UserModel> getUser({required UserId userId}) async {
    final userInfo = await getUserInfo(userId);

    final user = UserModel.fromJson(userInfo.docs.first.data());

    return user;
  }

  @override
  Future<void> addNewUser({required UserModel user}) =>
      FirebaseFirestore.instance
          .collection(
            FirebaseCollectionName.users,
          )
          .add(user.toJson());

  @override
  Future<UserModel> updateUserInfo({
    required UserId userId,
    required UserModel user,
  }) async {
    final userInfo = await getUserInfo(userId);
    await userInfo.docs.first.reference.update(
        user.toJson(),
      );

    return getUser(userId: userId);
  }
}
