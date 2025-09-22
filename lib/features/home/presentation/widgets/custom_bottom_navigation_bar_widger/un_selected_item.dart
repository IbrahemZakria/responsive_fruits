import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:responsive_fruits/features/home/domain/entities/bottom_app_bar_entity.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';

// ignore: must_be_immutable
class UnSelectedItem extends StatelessWidget {
  UnSelectedItem({super.key, required this.bottomAppBarEntity});
  final BottomAppBarEntity bottomAppBarEntity;
  int cartntificationNumer = 0;

  @override
  Widget build(BuildContext context) {
    if (bottomAppBarEntity.index == 2) {
      return BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is AddProductToCartState) {
            cartntificationNumer = context
                .watch<CartCubit>()
                .cartEntity
                .cartProducts
                .length;
          } else if (state is RemovrProductFromCartState) {
            cartntificationNumer = context
                .watch<CartCubit>()
                .cartEntity
                .cartProducts
                .length;
          } else if (state is CartInitial) {
            cartntificationNumer = 0;
          }
          if (cartntificationNumer != 0) {
            return Container(
              color: Colors.transparent,
              child: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: state is AddProductToCartState
                      ? Colors.green
                      : Colors.red,
                ),
                showBadge: true,
                badgeContent: Text(
                  '$cartntificationNumer',
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
                child: SvgPicture.asset(bottomAppBarEntity.unSelectedImage),
              ),
            );
          } else {
            return Container(
              color: Colors.transparent,
              child: SvgPicture.asset(bottomAppBarEntity.unSelectedImage),
            );
          }
        },
      );
    }
    return Container(
      color: Colors.transparent,
      child: SvgPicture.asset(bottomAppBarEntity.unSelectedImage),
    );
  }
}
