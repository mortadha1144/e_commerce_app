import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/auth/data/constants/constants.dart';
import 'package:e_commerce_app/Features/auth/data/models/login_request.dart';
import 'package:e_commerce_app/Features/auth/data/models/sign_up_model.dart';
import 'package:e_commerce_app/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/Features/auth/providers/user_repo_provider.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/Features/auth/data/repos/user_repo.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepoProvider = Provider<AuthRepo>((ref) {
  return AuthRepo(userRepo: ref.read(userRepoProvider));
});

class AuthRepo {
  UserId? get userId => FirebaseAuth.instance.currentUser?.uid;
  bool get isAlreadyLoggedIn => userId != null;
  String get displayName =>
      FirebaseAuth.instance.currentUser?.displayName ?? '';
  String? get email => FirebaseAuth.instance.currentUser?.email;
  final UserRepo userRepo;

  CollectionReferenceMap get _collection =>
      FirebaseFirestore.instance.collection(FirebaseCollectionName.users);

  AuthRepo({required this.userRepo});

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    await FacebookAuth.instance.logOut();
  }

  Future<void> signUp({
    required SignUpModel body,
  }) async {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: body.email,
      password: body.password,
    );

    final uid = credential.user!.uid;

    if (credential.additionalUserInfo!.isNewUser) {
      final docRef = _collection.doc(uid);

      final result = await docRef.get();

      if (!result.exists) {
        final user = UserCreate(
          uid: uid,
          email: body.email,
          displayName: body.displayName,
          phoneNumber: body.phoneNumber,
          address: body.address,
          createdAt: FieldValue.serverTimestamp(),
          image: null,
        );

        await docRef.set(user.toJson());
      }
    }
  }

  Future<AuthResult> loginWithFacebook() async {
    final loginResult = await FacebookAuth.instance.login();
    final token = loginResult.accessToken?.token;
    if (token == null) {
      // user has aborted the login in process
      return AuthResult.aborted;
    }

    final oauthCredentials = FacebookAuthProvider.credential(token);

    try {
      await FirebaseAuth.instance.signInWithCredential(oauthCredentials);
      return AuthResult.success;
    } on FirebaseAuthException catch (e) {
      final email = e.email;
      final credential = e.credential;
      if (e.code == Constants.accountExistsWithDifferentCredential &&
          email != null &&
          credential != null) {
        final providers =
            await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
        if (providers.contains(Constants.googleCome)) {
          await loginWithGoogle();
          FirebaseAuth.instance.currentUser?.linkWithCredential(credential);
        }
        return AuthResult.success;
      }
      return AuthResult.failure;
    }
  }

  Future<UserModel> loginWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        Constants.emailScope,
      ],
    );

    final signInAccount = await googleSignIn.signIn();
    // if (signInAccount == null) {
    //   // user has aborted the login in process
    //   return null;
    // }
    final googleAuth = await signInAccount!.authentication;
    final oauthCredentials = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    await FirebaseAuth.instance.signInWithCredential(oauthCredentials);

    final user = userRepo.saveUserInfo(
      userId: userId!,
      displayName: displayName,
      email: email,
    );

    return user;
  }

  Future<UserData> loginWithEmailAndPassword({
    required LoginRequest request,
  }) async {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: request.email,
      password: request.password,
    );

    final uid = credential.user!.uid;

    final result = await _collection
        .where(
          FirebaseFieldName.userId,
          isEqualTo: uid,
        )
        .limit(1)
        .get();

    final user = UserData.fromJson(result.docs.first.data());
    return user;
  }

  Future<UserModel> updateUserInfo({
    required UserModel user,
  }) {
    return userRepo.updateUserInfo(
      userId: userId!,
      user: user,
    );
  }

  Future<void> resetPassword({required String email}) {
    return FirebaseAuth.instance.sendPasswordResetEmail(
      email: email,
    );
  }
}
