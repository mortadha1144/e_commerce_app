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
              // add isSpecialOffer = false to all products
              // final collection = FirebaseFirestore.instance
              //     .collection(FirebaseCollectionName.products);
              // final query = await collection.get();
              // for (final doc in query.docs) {
              //   await doc.reference
              //       .update({FirebaseFieldName.isSpecialOffer: false});
              // }
            },
            child: const Text('Add Test Products')),
      ],
    )));
  }
}
