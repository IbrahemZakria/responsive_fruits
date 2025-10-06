import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/order/orders_items.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainHomeAppbar(
        titel: S.of(context).myOrders,
        filter: false,
        actions: [],
        leading: null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            OrdersItems(),
          ],
        ),
      ),
    );
  }
}
