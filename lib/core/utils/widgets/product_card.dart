import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/views/widgets/favorite_button.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/widgets/cashed_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 120,
    this.aspectRatio = 1.02,
    required this.product,
    this.onPress,
  });

  final double width, aspectRatio;
  final ProductModel product;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: onPress ??
            () => context.push(
                  '/${RoutesDocument.productDetailsView}',
                  extra: product,
                ),
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          // height: getProportionateScreenWidth(220),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: CashedImage(imageUrl: product.image),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              //const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  FavoriteButton(product: product)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

