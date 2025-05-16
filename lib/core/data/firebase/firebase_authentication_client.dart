import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/data/api/authentication/login_request.dart';
import 'package:e_commerce_app/core/data/api/authentication/register_request_body.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/enums/enums.dart';
import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:e_commerce_app/features/auth/data/constants/constants.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthenticationClient {
  UserId? get userId => FirebaseAuth.instance.currentUser?.uid;
  bool get isAlreadyLoggedIn => userId != null;
  String get displayName =>
      FirebaseAuth.instance.currentUser?.displayName ?? '';
  String? get email => FirebaseAuth.instance.currentUser?.email;
  // final UserRepo userRepo;

  CollectionReferenceMap get _collection =>
      FirebaseFirestore.instance.collection(FirebaseCollectionName.users);

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    await FacebookAuth.instance.logOut();
  }

  Future<void> signUp({
    required RegisterRequestBody body,
  }) async {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: body.email ?? '',
      password: body.password,
    );

    final uid = credential.user!.uid;

    if (credential.additionalUserInfo!.isNewUser) {
      final docRef = _collection.doc(uid);

      final result = await docRef.get();

      if (!result.exists) {
        final user = UserCreate(
          uid: uid,
          email: body.email ?? '',
          displayName: body.fullName,
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

  Future<UserData> loginWithGoogle() async {
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

    final credential =
        await FirebaseAuth.instance.signInWithCredential(oauthCredentials);
    final uid = credential.user!.uid;

    final docRef = _collection.doc(uid);

    final result = await docRef.get();
    // if the user does not exist, create a new one
    if (!result.exists) {
      final user = UserCreate(
        uid: uid,
        displayName: credential.user!.displayName ?? '',
        email: credential.user!.email ?? '',
        phoneNumber: null,
        address: null,
        createdAt: FieldValue.serverTimestamp(),
        image: credential.user!.photoURL,
      );

      await docRef.set(user.toJson());
      final newResult = await docRef.get();
      return UserData.fromJson(newResult.data()!);
    }
    // user already exists
    await docRef.update({
      FirebaseFieldName.displayName: credential.user!.displayName,
      FirebaseFieldName.email: credential.user!.email,
      FirebaseFieldName.image: credential.user!.photoURL,
    });

    final newResult = await docRef.get();

    return UserData.fromJson(newResult.data()!);
  }

  Future<UserData> loginWithEmailAndPassword({
    required LoginRequest request,
  }) async {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: request.phoneNumber,
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

    return UserData.fromJson(result.docs.first.data());
  }

  Future<void> resetPassword({required String email}) {
    return FirebaseAuth.instance.sendPasswordResetEmail(
      email: email,
    );
  }
}
