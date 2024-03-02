import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/views/widgets/favorite_button.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/widgets/cashed_image.dart';
import 'package:flutter/material.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 130,
      child: Card(

        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: CashedImage(imageUrl: product.image),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    product.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    product.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${product.price}',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(color: kPrimaryColor),
                      ),
                      FavoriteButton(product: product)
                    ],
                  ),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}