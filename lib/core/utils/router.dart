import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/forget_password_page.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/o_t_p_views.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_in.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/phone_sign_up_page.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_up.dart';
import 'package:responsive_fruits/features/home/presentation/pages/adabtive_main_home_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/main_shell.dart';
import 'package:responsive_fruits/features/home/presentation/pages/home_page_body.dart';
import 'package:responsive_fruits/features/home/presentation/pages/order_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/cart_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/favorite_page.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/drawer_widgets/drawer_body.dart';
import 'package:responsive_fruits/features/home/presentation/pages/contact_us_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/profile_page.dart';
import 'package:responsive_fruits/features/onboarding/presentation/pages/on_boarding_view.dart';
import 'package:responsive_fruits/features/home/presentation/pages/product_page.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/order/order_details_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/seller_products_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/chek_out_page.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/order_entity.dart';

GoRouter buildRouter({required String initialLocation}) {
  return GoRouter(
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        name: OnBoardingView.routeName,
        path: '/${OnBoardingView.routeName}',
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        name: ProfilePage.routeName,
        path: '/${ProfilePage.routeName}',
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        name: ContactUsPage.routeName,
        path: '/${ContactUsPage.routeName}',
        builder: (context, state) => const ContactUsPage(),
      ),
      GoRoute(
        name: SignIn.routeName,
        path: '/${SignIn.routeName}',
        builder: (context, state) => const SignIn(),
      ),
      GoRoute(
        name: SignUp.routeName,
        path: '/${SignUp.routeName}',
        builder: (context, state) => const SignUp(),
      ),
      GoRoute(
        name: PhoneSignUpPage.routeName,
        path: '/${PhoneSignUpPage.routeName}',
        builder: (context, state) => const PhoneSignUpPage(),
      ),
      GoRoute(
        name: ForgetPasswordPage.routeName,
        path: '/${ForgetPasswordPage.routeName}',
        builder: (context, state) => const ForgetPasswordPage(),
      ),
      GoRoute(
        name: OTPViews.routeName,
        path: '/${OTPViews.routeName}',
        builder: (context, state) => const OTPViews(),
      ),
      ShellRoute(
        builder: (context, state, child) => AdaptiveMainShell(child: child),
        routes: [
          GoRoute(
            path: '/${AdabtiveMainHomePage.routeName}/home',
            builder: (context, state) => HomePageBody(),
          ),
          GoRoute(
            path: '/${AdabtiveMainHomePage.routeName}/order',
            builder: (context, state) => OrderPage(),
          ),
          GoRoute(
            path: '/${AdabtiveMainHomePage.routeName}/cart',
            builder: (context, state) => CartPage(),
          ),
          GoRoute(
            path: '/${AdabtiveMainHomePage.routeName}/favorite',
            builder: (context, state) => FavoritePage(),
          ),
          GoRoute(
            path: '/${AdabtiveMainHomePage.routeName}/drawer',
            builder: (context, state) => DrawerBody(),
          ),
        ],
      ),

      // Product page expects an extra ProductEntity
      GoRoute(
        path: '/product',
        builder: (context, state) {
          final product = state.extra as ProductEntity;
          return ProductPage(productEntity: product);
        },
      ),

      // Order details via extra OrderEntity
      GoRoute(
        path: '/order',
        builder: (context, state) {
          final order = state.extra as OrderEntity;
          return OrderDetailsPage(order: order);
        },
      ),

      // Seller page via extra String sellerName
      GoRoute(
        path: '/seller',
        builder: (context, state) {
          final sellerName = state.extra as String;
          return SellerProductsPage(sellerName: sellerName);
        },
      ),
      GoRoute(
        path: '/checkout',
        builder: (context, state) => const ChekOutPage(),
      ),
    ],
    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text('Route not found'))),
  );
}
