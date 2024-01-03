import 'package:e_commerce_app/Features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/Features/favourite/data/models/favorite_item_model.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/favourite/providers/favorite_provider.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteButton extends ConsumerWidget {
  const FavoriteButton({
    required this.product,
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isProductFavorite =
        ref.watch(favoriteProvider).any((x) => x.product.id == product.id);

    return InkWell(
      onTap: () async {
        final userId = ref.read(userIdProvider);

        if (userId == null) {
          return;
        }

        if (isProductFavorite) {
          ref.read(favoriteProvider.notifier).remove(product.id!);
        } else {
          final favoriteItemModel =
              FavoriteItemModel(product: product, date: DateTime.now());
          ref.read(favoriteProvider.notifier).add(favoriteItemModel);
        }
      },
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(15)),
        width: getProportionateScreenWidth(64),
        decoration: BoxDecoration(
          color: isProductFavorite
              ? const Color(0xFFFFE6E6)
              : const Color(0xFFF5F6F9),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: SvgPicture.asset(
          Assets.assetsIconsHeartIcon2,
          colorFilter: ColorFilter.mode(
            isProductFavorite
                ? const Color(0xFFFF4848)
                : const Color(0xFFDBDEE4),
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
