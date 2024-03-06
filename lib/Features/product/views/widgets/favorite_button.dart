import 'package:e_commerce_app/features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/features/favorite/providers/is_product_favorite_provider.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:e_commerce_app/features/favorite/providers/favorite_provider.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteButton extends ConsumerWidget {
  const FavoriteButton({
    super.key,
    required this.product,
    this.borderRadius,
    this.width = 30,
  });

  final ProductModel product;
  final BorderRadiusGeometry? borderRadius;
  final double width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isProductFavorite = ref.watch(isProductFavoriteProvider(product.id));

    return InkWell(
      onTap: () async {
        final userId = ref.read(userIdProvider);

        if (userId == null) {
          return;
        }

        await ref.read(favoriteProvider.notifier).toggle(product);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        width: width,
        decoration: BoxDecoration(
          color: isProductFavorite
              ? const Color(0xFFFFE6E6)
              : const Color(0xFFF5F6F9),
          borderRadius: borderRadius ??
              const BorderRadius.all(
                Radius.circular(20),
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
