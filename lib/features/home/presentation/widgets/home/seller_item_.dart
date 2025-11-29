import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/features/home/domain/entities/seller_entity.dart';
// import 'package:responsive_fruits/features/home/presentation/pages/seller_products_page.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class SellerItem extends StatelessWidget {
  final SellerEntity seller;

  const SellerItem({super.key, required this.seller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // pass seller name via extra
        context.push('/seller', extra: seller.name);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Seller Logo
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  seller.logoUrl,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),

              /// Seller Info
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Seller Name + Rating
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            seller.name,
                            style: AppTextSyles.textStyle20sb(context),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        Icon(Icons.star, size: 16, color: Colors.orange),
                        Text(seller.rating.toString()),
                      ],
                    ),

                    const SizedBox(height: 6),

                    /// Delivery Charges
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.delivery_dining,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "${S.of(context).delivery_charges} ${seller.deliveryCharges} KD",
                                  style: AppTextSyles.textStyle14re(context),
                                ),
                              ],
                            ),

                            const SizedBox(height: 6),

                            /// Status + Category
                            Row(
                              children: [
                                Text(
                                  seller.status,
                                  style: AppTextSyles.textStyle14re(context)
                                      .copyWith(
                                        color:
                                            seller.status == S.of(context).open
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  seller.category,
                                  style: AppTextSyles.textStyle14re(context),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              "${seller.distance} ${S.of(context).km}",
                              style: AppTextSyles.textStyle11sB(context),
                            ),
                            const Icon(
                              Icons.location_on,
                              size: 16,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /// Distance
            ],
          ),
        ),
      ),
    );
  }
}
