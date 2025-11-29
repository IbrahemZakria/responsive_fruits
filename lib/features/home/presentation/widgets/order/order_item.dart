import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/features/home/domain/entities/order_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/order_status_extentation.dart';

class OrderItem extends StatelessWidget {
  final OrderEntity order;

  const OrderItem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final color = OrderStatusStyle.getColor(order.status);
    final icon = OrderStatusStyle.getIcon(order.status);
    final label = OrderStatusStyle.getLabel(order.status);

    return InkWell(
      onTap: () {
        context.push('/order', extra: order);
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: color.withValues(alpha: .02),
            child: Icon(icon, color: color),
          ),
          title: Text(
            "#${order.orderId} - ${order.totalPrice.toStringAsFixed(2)} KD",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${order.date.day}/${order.date.month}/${order.date.year} • ${order.itemsCount} items",
              ),
              Text(
                "Status : $label",
                style: TextStyle(color: color, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          trailing: CircleAvatar(
            backgroundColor: color,
            child: const Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
