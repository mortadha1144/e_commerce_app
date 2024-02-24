import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteView extends ConsumerWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(cartProvider);
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('FavoriteView'),
        TextButton(
            onPressed: () async {
              // final ref = FirebaseFirestore.instance
              //     .collection(FirebaseCollectionName.products);
              // for (var product in products) {
              //   await ref.add(product.toJson());
              // }
            },
            child: const Text('Add Test Products')),
      ],
    )));
  }
}