import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          "Category Name",
          style: AppTextSyles.textStyle16b(
            context,
          ).copyWith(color: Colors.green),
        ),
        const SizedBox(height: 8),

        // Product Name + Prices
        Row(
          children: [
            Expanded(
              child: Text(
                productEntity.name,
                style: AppTextSyles.textStyle20sB(context),
              ),
            ),
            Text(
              productEntity.price.toString(),
              style: AppTextSyles.textStyle16b(context),
            ),
            SizedBox(width: 8),
            productEntity.discountText != null
                ? Text(
                    productEntity.discountText!,
                    style: AppTextSyles.textStyle14re(
                      context,
                    ).copyWith(color: Colors.red),
                  )
                : SizedBox(),
          ],
        ),
        const SizedBox(height: 12),

        // Description
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
          "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          style: AppTextSyles.textStyle14re(context),
        ),
        const SizedBox(height: 8),

        const Text(
          "Sell Per : Kartoon",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),

        const SizedBox(height: 16),
      ],
    );
  }
}
