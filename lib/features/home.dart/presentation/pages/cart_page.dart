import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/cart/cart_page_body.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/drawer_widgets/drawer_body.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < 1024 ? DrawerBody() : null,
      appBar: MainHomeAppbar(
        titel: S.of(context).basket,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        ],
        filter: true,
        leading: size.width < 1024
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  IconButton(
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.menu),
                  ),
                ],
              )
            : null,
      ),
      body: CartPageBody(),
    );
  }
}
