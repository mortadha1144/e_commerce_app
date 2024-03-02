import 'package:e_commerce_app/Features/home/data/models/category_model.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/models/named_object.dart';
import '../../../../size_config.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              4,
              (index) {
                final category = categories[index];
                final namedCategory = NamedObject(
                  name: category.name,
                  id: category.id,
                );
                return CategoryCard(
                  icon: category.image,
                  text: category.name,
                  onPress: () => context.push(
                    '/${RoutesDocument.paginatedProductsGridView}',
                    extra: namedCategory,
                  ),
                );
              },
            ),
            CategoryCard(
              image: Assets.assetsIconsDiscover,
              text: 'more',
              onPress: () {},
            ),
          ],
        ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    this.icon,
    this.image,
    required this.text,
    required this.onPress,
  });

  final String text;
  final String? icon;
  final String? image;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: icon != null
                    ? SvgPicture.network(
                        icon!,
                        colorFilter: const ColorFilter.mode(
                          kPrimaryColor,
                          BlendMode.srcIn,
                        ),
                      )
                    : SvgPicture.asset(
                        image!,
                        colorFilter: const ColorFilter.mode(
                          kPrimaryColor,
                          BlendMode.srcIn,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
