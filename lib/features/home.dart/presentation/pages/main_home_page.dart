import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/features/home.dart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home.dart/presentation/cubit/home_cubit.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/cart_page.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/home_page_body.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  MainHomePageState createState() => MainHomePageState();
}

class MainHomePageState extends State<MainHomePage> {
  final List<GlobalKey<NavigatorState>> _navigatorKeys = List.generate(
    4,
    (_) => GlobalKey<NavigatorState>(),
  );

  int _currentIndex = 0;

  Widget _buildTabNavigator(Widget child, int index) {
    return Offstage(
      offstage: _currentIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (settings) => MaterialPageRoute(builder: (_) => child),
      ),
    );
  }

  void _selectTab(int index) {
    if (_currentIndex == index) {
      _navigatorKeys[index].currentState!.popUntil((route) => route.isFirst);
      context.read<HomeCubit>().rebuild();
    } else {
      setState(() => _currentIndex = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildTabNavigator(HomePageBody(), 0),
          _buildTabNavigator(CartPage(), 1),
          _buildTabNavigator(const Center(child: Text("Favorites Page 🛒")), 2),
          _buildTabNavigator(const Center(child: Text("Profile Page 👤")), 3),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _selectTab,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: badges.Badge(
              badgeStyle: badges.BadgeStyle(badgeColor: Colors.green),
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
              child: Icon(Icons.shopping_cart),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorites",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
