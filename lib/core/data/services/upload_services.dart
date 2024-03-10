import 'dart:io';

import 'package:e_commerce_app/core/utils/type_defs.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

final uploadServicesProvider = Provider.autoDispose((ref) => UploadServices());

class UploadServices {
  Future<String> uploadImage(File file, UserId userId) async {
    final fileName = const Uuid().v4();

    final ref = FirebaseStorage.instance.ref().child(userId).child(fileName);
    await ref.putFile(file);
    return await ref.getDownloadURL();
  }
}
