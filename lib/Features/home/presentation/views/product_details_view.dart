import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const RoundedIconButton(),
        //automaticallyImplyLeading: false,
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape: const CircleBorder(),
            foregroundColor: Colors.black),
        child: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
    );
  }
}
