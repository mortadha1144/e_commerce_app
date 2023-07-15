import 'package:e_commerce_app/Features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/custom_prodect_details_appbar.dart';
import 'widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(rating: product.rating?.rate ?? 0)),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFFF5F6F9),
        ),
        child: ProductDetailsViewBody(
          product: product,
        ),
      ),
    );
  }
}
