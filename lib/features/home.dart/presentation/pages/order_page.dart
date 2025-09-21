import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/drawer_widgets/drawer_body.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/order/orders_items.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MediaQuery.sizeOf(context).width < 1024 ? DrawerBody() : null,

      appBar: MainHomeAppbar(titel: S.of(context).myOrders, filter: false),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            // SliverToBoxAdapter(child: CustomCursorSlider()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            OrdersItems(),
          ],
        ),
      ),
    );
  }
}
