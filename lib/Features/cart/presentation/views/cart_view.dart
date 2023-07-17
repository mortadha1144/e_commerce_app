import 'package:e_commerce_app/Features/cart/data/models/cart_model.dart';
import 'package:e_commerce_app/Features/cart/presentation/views/widgets/cart_view_body.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const CartViewBody(),
      bottomNavigationBar: const CheckOurCart(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '${demoCarts.length} items',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}

class CheckOurCart extends StatelessWidget {
  const CheckOurCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(30),
        vertical: getProportionateScreenWidth(10),
      ),
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(.15))
        ],
      ),
      child: const Column(
        children: [],
      ),
    );
  }
}
