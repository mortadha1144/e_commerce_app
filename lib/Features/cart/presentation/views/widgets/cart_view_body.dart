import 'package:e_commerce_app/Features/cart/data/models/cart_model.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                child: Image.network(demoCarts[0].product.image!),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  demoCarts[0].product.title!,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  maxLines: 2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
