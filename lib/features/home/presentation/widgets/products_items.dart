import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/dumy_data/dumy_data.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/product_item.dart';

class ProductsItems extends StatelessWidget {
  const ProductsItems({super.key, this.products});
  final List<ProductEntity>? products;

  @override
  Widget build(BuildContext context) {
    final items = products ?? dumyproductsEntits;
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => ProductItem(product: items[index]),
    );
  }
}
