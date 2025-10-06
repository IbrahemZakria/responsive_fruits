import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/cart/cart_page_body.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MainHomeAppbar(
        titel: S.of(context).basket,
        actions: [],
        filter: true,
      ),
      body: CartPageBody(),
    );
  }
}
