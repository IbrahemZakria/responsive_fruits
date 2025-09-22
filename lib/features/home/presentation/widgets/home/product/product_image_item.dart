import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';

class ProductImageItem extends StatelessWidget {
  const ProductImageItem({
    super.key,
    required this.size,
    required this.productEntity,
  });

  final Size size;
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: size.height > 400 ? size.height * .2 : 200,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: FittedBox(
              child: Image.asset(
                Assets.resourceImagesCoconuts,
                fit: BoxFit.contain,
              ),
            ),
          ),
          if (productEntity.discountText != null)
            Positioned(
              top: 10,
              right: 20,
              child: Text(
                productEntity.discountText!,
                style: AppTextSyles.textStyle14re(context),
              ),
            ),
        ],
      ),
    );
  }
}
