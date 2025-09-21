import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/features/home.dart/domain/entities/cart__item_entity.dart';
import 'package:responsive_fruits/features/home.dart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/cart/cart_card_widget.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CartItemEntity> cartItems = context
        .read<CartCubit>()
        .cartEntity
        .cartProducts;
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return SliverList.separated(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return CartCard(cartItemEntity: cartItems[index]);
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 8);
          },
        );
      },
    );
  }
}
