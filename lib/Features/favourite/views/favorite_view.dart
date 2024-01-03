import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/Features/cart/providers/cart_provider.dart';
import 'package:e_commerce_app/Features/favourite/views/test.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteView extends ConsumerWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartProvider);
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('FavoriteView'),
        TextButton(
            onPressed: () async {
              // final reff = FirebaseFirestore.instance
              //     .collection(FirebaseCollectionName.products);
              // for (var product in products) {
              //   await reff.add(product.toJson());
              // }
            },
            child: Text('Add Test Products')),
      ],
    )));
  }
}
