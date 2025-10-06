import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';
import 'package:responsive_fruits/features/home/domain/entities/order_entity.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/order/order_tracking_time_line.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class OrderDetailsPage extends StatelessWidget {
  final OrderEntity order;

  const OrderDetailsPage({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainHomeAppbar(
        titel: S.of(context).orderDetails,
        filter: false,
        leading: null,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Text("Your Order Code: #${order.orderId}"),
                  Text("${order.itemsCount} items - ${order.totalPrice} KD"),
                  Text("Payment Method : ${order.paymentMethod}"),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            SliverToBoxAdapter(child: OrderTrackingTimeline(order: order)),
            if (order.status == OrderStatus.shipped ||
                order.status == OrderStatus.placed ||
                order.status == OrderStatus.confirmed)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(onTap: () {}, text: S.of(context).confirm),
                    SizedBox(height: 16),
                    CustomButton(
                      color: Colors.red,
                      onTap: () {},
                      text: "${S.of(context).canceled} ?",
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
