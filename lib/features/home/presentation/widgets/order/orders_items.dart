import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/dumy_data/dumy_data.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/order/order_item.dart';

class OrdersItems extends StatelessWidget {
  const OrdersItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: dummyOrders.length,
      itemBuilder: (context, index) => OrderItem(order: dummyOrders[index]),
    );
  }
}
