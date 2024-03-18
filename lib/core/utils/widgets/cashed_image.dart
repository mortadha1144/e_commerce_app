import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'custom_loading_indicator.dart';

class CashedImage extends StatelessWidget {
  const CashedImage({
    super.key,
    this.imageUrl,
    this.borderRadius,
    this.placeholder,
  });

  final String? imageUrl;
  final BorderRadius? borderRadius;
  final String? placeholder;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imageUrl ?? '',
        placeholder: (context, url) => const CustomLoadingIndicator(),
        errorWidget: (context, url, error) => placeholder != null
            ? Image.asset(placeholder!)
            : const Icon(Icons.error),
      ),
    );
  }
}
