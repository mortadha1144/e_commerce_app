import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../data/models/cart_item_model.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.card,
  });

  final CartItemModel card;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: .88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.network(card.product.image),
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
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                    text: '\$${card.product.price}',
                    style: const TextStyle(
                      color: kPrimaryColor,
                    ),
                    children: const [
                      TextSpan(
                          text: ' x2', style: TextStyle(color: kTextColor)),
                    ]),
              )
            ],
          ),
        )
      ],
    );
  }
}
