import 'package:hooks_riverpod/hooks_riverpod.dart';

final productRepoProvider = Provider(
  (ref) => ProductRepo(),
);

class ProductRepo {}
