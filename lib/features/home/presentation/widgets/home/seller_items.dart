import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/features/home/domain/entities/seller_entity.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/home/seller_item_.dart';

class SellerItems extends StatelessWidget {
  const SellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    SellerEntity seller = SellerEntity(
      id: "1",
      name: "Seller name",
      logoUrl: Assets.resourceImagesCherries,
      rating: 4.5,
      deliveryCharges: 0.5,
      distance: 2.5,
      status: "Open",
      category: "Beverages",
    );

    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (context, index) => SellerItem(seller: seller),
    );
  }
}
