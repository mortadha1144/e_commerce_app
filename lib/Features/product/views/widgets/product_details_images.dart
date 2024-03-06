import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsImages extends StatefulWidget {
  const ProductDetailsImages({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  State<ProductDetailsImages> createState() => _ProductDetailsImagesState();
}

class _ProductDetailsImagesState extends State<ProductDetailsImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    List<String> images = [widget.product.image];
    return Column(
      children: [
        SizedBox(
          width: 220,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.network(images[0]),
          ),
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ...List.generate(images.length,
            //     (index) => buildSmallPreview(index: index, images: images))
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallPreview(
      {required int index, required List<String> images}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedImage == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: Image.network(images[index]),
      ),
    );
  }
}
