import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home.dart/domain/entities/produt_entity.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/product_item.dart';

class ProductsItems extends StatelessWidget {
  const ProductsItems({super.key});

  @override
  Widget build(BuildContext context) {
    ProductEntity product = ProductEntity(
      name: "Product name",
      price: "Price Upon Selection",
      discountText: "Up to 10% Off",
      image: "assets/images/sample.png",
    );
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (context, index) => ProductItem(product: product),
    );
  }
}
