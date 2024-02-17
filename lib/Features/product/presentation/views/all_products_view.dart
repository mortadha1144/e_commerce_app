import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AllProductsView extends ConsumerWidget {
  const AllProductsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: FirestoreListView<ProductModel>(
          pageSize: 5,
          query: ref.read(productRepoProvider).getAllProducts,
          itemBuilder: (context, doc) {
            final product = doc.data();
            return Text(product.title, style: const TextStyle(fontSize: 40));
          },
        ),
      ),
    );
  }
}
