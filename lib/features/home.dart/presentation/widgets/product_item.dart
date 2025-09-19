import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home.dart/domain/entities/produt_entity.dart';

class ProductItem extends StatelessWidget {
  final ProductEntity product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // صورة المنتج (دائرية)
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: AssetImage(product.image),
            ),
            const SizedBox(width: 12),

            // بيانات المنتج
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: AppTextSyles.textStyle16b(context)),
                  const SizedBox(height: 4),
                  Text(
                    product.price,
                    style: AppTextSyles.textStyle14re(
                      context,
                    ).copyWith(color: Colors.red.shade400),
                  ),
                  if (product.discountText != null) ...[
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        product.discountText!,
                        style: AppTextSyles.textStyle11sB(
                          context,
                        ).copyWith(color: Colors.red.shade400),
                      ),
                    ),
                  ],
                ],
              ),
            ),

            // زر السلة
            InkWell(
              child: CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.kprimarycolor,
                child: SvgPicture.asset(Assets.resourceImagesBasket),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
