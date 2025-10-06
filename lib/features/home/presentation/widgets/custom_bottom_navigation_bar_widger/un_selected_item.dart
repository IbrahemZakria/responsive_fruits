import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:responsive_fruits/features/home/domain/entities/bottom_app_bar_entity.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/favorite/favorite_cubit.dart';

class UnSelectedItem extends StatelessWidget {
  final BottomAppBarEntity bottomAppBarEntity;

  const UnSelectedItem({super.key, required this.bottomAppBarEntity});

  @override
  Widget build(BuildContext context) {
    // عدد المنتجات في الكارت مباشرة من الـ Cubit
    final cartCount = context.select<CartCubit, int>(
      (cubit) => cubit.cartEntity.cartProducts.length,
    );
    final favoritecount = context.select<FavoriteCubit, int>(
      (cubit) => cubit.favorites.length,
    );

    Widget iconWidget = SvgPicture.asset(bottomAppBarEntity.unSelectedImage);

    if (bottomAppBarEntity.index == 2 && cartCount != 0) {
      iconWidget = badges.Badge(
        badgeStyle: badges.BadgeStyle(badgeColor: Colors.green),
        showBadge: true,
        badgeContent: Text(
          '$cartCount',
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
        child: iconWidget,
      );
    }
    if (bottomAppBarEntity.index == 3 && favoritecount != 0) {
      // لو ده أيقونة الكارت وفيه منتجات
      iconWidget = badges.Badge(
        badgeStyle: badges.BadgeStyle(badgeColor: Colors.green),
        showBadge: true,
        badgeContent: Text(
          '$favoritecount',
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
        child: iconWidget,
      );
    }

    return Container(color: Colors.transparent, child: iconWidget);
  }
}
