import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/favorite/favorite_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/product_item.dart';

class ProductsItems extends StatelessWidget {
  const ProductsItems({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductEntity> products = context.read<FavoriteCubit>().favorites;
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return SliverList.separated(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductItem(product: products[index]);
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 8);
          },
        );
      },
    );
  }
}
