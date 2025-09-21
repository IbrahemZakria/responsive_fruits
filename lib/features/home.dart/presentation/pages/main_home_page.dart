import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';
import 'package:responsive_fruits/features/home.dart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home.dart/presentation/cubit/home_cubit.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/cart_page.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/home_page_body.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/order_page.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});

  final List<GlobalKey<NavigatorState>> _navigatorKeys = List.generate(
    4,
    (_) => GlobalKey<NavigatorState>(),
  );

  Widget _buildTabNavigator(Widget child, int index, int currentIndex) {
    return Offstage(
      offstage: currentIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (settings) => MaterialPageRoute(builder: (_) => child),
      ),
    );
  }

  void _selectTab(BuildContext context, int index, int currentIndex) {
    if (currentIndex == index) {
      _navigatorKeys[index].currentState!.popUntil((route) => route.isFirst);
    } else {
      context.read<HomeCubit>().changeTab(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              _buildTabNavigator(HomePageBody(), 0, currentIndex),
              _buildTabNavigator(OrderPage(), 1, currentIndex),
              _buildTabNavigator(CartPage(), 2, currentIndex),
              _buildTabNavigator(
                const Center(child: Text("Profile Page 👤")),
                3,
                currentIndex,
              ),
            ],
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.kprimarycolor,
              currentIndex: currentIndex,
              onTap: (index) => _selectTab(context, index, currentIndex),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.resourceImagesHomeIcon),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.resourceImagesOrdersIcon),
                  label: "order",
                ),
                BottomNavigationBarItem(
                  icon: badges.Badge(
                    badgeStyle: const badges.BadgeStyle(
                      badgeColor: Colors.green,
                    ),
                    showBadge: context
                        .read<CartCubit>()
                        .cartEntity
                        .cartProducts
                        .isNotEmpty,
                    badgeContent: Text(
                      context
                          .watch<CartCubit>()
                          .cartEntity
                          .cartProducts
                          .length
                          .toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    child: SvgPicture.asset(Assets.resourceImagesCartIcon),
                  ),
                  label: "Cart",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
