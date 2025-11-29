import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
// import 'package:responsive_fruits/features/home/presentation/cubit/favorite/favorite_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/features/home/presentation/pages/adabtive_main_home_page.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/drawer_widgets/drawer_body.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/custom_bottom_navigation_bar.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/adaptive_layout.dart';

class AdaptiveMainShell extends StatelessWidget {
  const AdaptiveMainShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobile: (context) => child,
        landscapeMobile: (context) => child,
        tablet: (context) => child,
        desktop: (context) => Row(
          children: [
            Expanded(flex: 1, child: DrawerBody()),
            Expanded(flex: 4, child: child),
          ],
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) {
          final location = GoRouter.of(
            context,
          ).routeInformationProvider.value.uri.path;
          int selectedIndex = 0;
          if (location.endsWith('/home')) {
            selectedIndex = 0;
          } else if (location.endsWith('/order')) {
            selectedIndex = 1;
          } else if (location.endsWith('/cart')) {
            selectedIndex = 2;
          } else if (location.endsWith('/favorite')) {
            selectedIndex = 3;
          } else if (location.endsWith('/drawer')) {
            selectedIndex = 4;
          }
          return CustomBottomNavigationBar(
            selectedIndex: selectedIndex,
            selectedItem: (index) {
              switch (index) {
                case 0:
                  context.go('/${AdabtiveMainHomePage.routeName}/home');
                  break;
                case 1:
                  context.go('/${AdabtiveMainHomePage.routeName}/order');
                  break;
                case 2:
                  context.go('/${AdabtiveMainHomePage.routeName}/cart');
                  break;
                case 3:
                  context.go('/${AdabtiveMainHomePage.routeName}/favorite');
                  break;
                case 4:
                  context.go('/${AdabtiveMainHomePage.routeName}/drawer');
                  break;
              }
            },
          );
        },
      ),
    );
  }
}
