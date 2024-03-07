import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/widgets/product_card.dart';
import 'package:e_commerce_app/features/favorite/providers/favorite_provider.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteView extends ConsumerWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteProducts = ref.watch(favoriteProvider);
    return Scaffold(
      appBar: buildAppBar(context, favoriteProducts.length),
      body: buildItemsGrid(favoriteProducts, context),
    );
  }

  Widget buildItemsGrid(
      List<ProductModel> favoriteProducts, BuildContext context) {
    return SafeArea(
      child: favoriteProducts.isEmpty
          ? Center(
              child: Text(
                'No favorite products yet!',
                style: context.textTheme.bodyLarge,
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: favoriteProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) =>
                  ProductCard(product: favoriteProducts[index]),
            ),
    );
  }

  AppBar buildAppBar(BuildContext context, int totalItems) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            'Your Favorite Products',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '$totalItems items',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
