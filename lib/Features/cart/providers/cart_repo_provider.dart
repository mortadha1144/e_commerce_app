import 'package:e_commerce_app/Features/cart/data/repos/cart_repo.dart';
import 'package:e_commerce_app/core/utils/providers/firebase_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartRepoProvider = Provider(
  (ref) => CartRepoImpl(
    ref.read(firebaseFirestoreProvider),
  ),
);