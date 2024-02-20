import 'package:hooks_riverpod/hooks_riverpod.dart';

final quantityProvider = StateProvider.autoDispose<int>((ref) => 1);
