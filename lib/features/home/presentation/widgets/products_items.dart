import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/dumy_data/dumy_data.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/product_item.dart';

class ProductsItems extends StatelessWidget {
  const ProductsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: dumyproductsEntits.length,
      itemBuilder: (context, index) =>
          ProductItem(product: dumyproductsEntits[index]),
    );
  }
}
