import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home.dart/domain/entities/order_entity.dart';
import 'package:responsive_fruits/features/home.dart/domain/entities/order_status_extentation.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/order/order_details_page.dart';

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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return OrderDetailsPage(order: order);
            },
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
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
