import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/pages/cart_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/favorite_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/home_page_body.dart';
import 'package:responsive_fruits/features/home/presentation/pages/order_page.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/custom_bottom_navigation_bar.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/drawer_widgets/drawer_body.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});

  final List<GlobalKey<NavigatorState>> _navigatorKeys = List.generate(
    5,
    (_) => GlobalKey<NavigatorState>(),
  );

  final List<Widget> _screens = [
    HomePageBody(),
    OrderPage(),
    CartPage(),
    FavoritePage(),
    DrawerBody(),
  ];

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
          body: IndexedStack(
            index: currentIndex,
            children: List.generate(_screens.length, (index) {
              return Navigator(
                key: _navigatorKeys[index],
                onGenerateRoute: (settings) {
                  return MaterialPageRoute(builder: (_) => _screens[index]);
                },
              );
            }),
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            selectedItem: (value) {
              _selectTab(context, value, currentIndex);
            },
            selectedIndex: currentIndex,
          ),
        );
      },
    );
  }
}
