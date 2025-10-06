import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/favorite/favorite_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/cart/products_number_text.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/products_items.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class FavoritePageBody extends StatelessWidget {
  const FavoritePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ProductsNumberText(
                  text: S
                      .of(context)
                      .favoriteItemsCount(
                        context.read<FavoriteCubit>().favorites.length,
                      ),
                ),
              ),

              ProductsItems(products: context.watch<FavoriteCubit>().favorites),
            ],
          );
        },
      ),
    );
  }
}
