import 'dart:math';

import 'package:e_commerce_app/Features/cart/providers/cart_provider.dart';
import 'package:e_commerce_app/core/utils/widgets/cashed_image.dart';
import 'package:e_commerce_app/core/utils/widgets/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../constants.dart';
import '../../data/models/cart_item_model.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.card,
  });

  final CartItemModel card;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 5),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: .88,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CashedImage(imageUrl: card.product.image),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  card.product.title,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  maxLines: 2,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: '\$${card.product.price}',
                        style: const TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Consumer(builder: (context, ref, _) {
                        return CounterWidget(
                          quantity: card.quantity,
                          onIncrement: () =>
                              ref.read(cartProvider.notifier).updateQuantity(
                                    card.product.id,
                                    card.quantity + 1,
                                  ),
                          onDecrement: () {
                            if (card.quantity > 1) {
                              ref.read(cartProvider.notifier).updateQuantity(
                                    card.product.id,
                                    card.quantity - 1,
                                  );
                            } else {
                              ref
                                  .read(cartProvider.notifier)
                                  .remove(card.product.id);
                            }
                          },
                          buttonsBackgroundColor: Colors.grey[100],
                          deleteIcon: card.quantity > 1
                              ? Icons.remove
                              : Icons.delete_outline,
                        );
                      }),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
