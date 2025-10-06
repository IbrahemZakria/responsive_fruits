import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home/domain/entities/order_entity.dart';

class OrderStatusStyle {
  static Color getColor(OrderStatus status) {
    switch (status) {
      case OrderStatus.canceled:
        return Colors.red;

      case OrderStatus.delivered:
        return Colors.purple;

      case OrderStatus.outForDelivery:
        return Colors.teal;
      case OrderStatus.shipped:
        return Colors.indigo;
      case OrderStatus.placed:
        return Colors.brown;
      case OrderStatus.confirmed:
        return Colors.deepPurple;
    }
  }

  static IconData getIcon(OrderStatus status) {
    switch (status) {
      case OrderStatus.canceled:
        return Icons.cancel;

      case OrderStatus.delivered:
        return Icons.done_all;

      case OrderStatus.outForDelivery:
        return Icons.local_shipping;
      case OrderStatus.shipped:
        return Icons.airplanemode_active;
      case OrderStatus.placed:
        return Icons.shopping_cart;
      case OrderStatus.confirmed:
        return Icons.verified;
    }
  }

  static String getLabel(OrderStatus status) {
    switch (status) {
      case OrderStatus.canceled:
        return "Canceled";

      case OrderStatus.delivered:
        return "Delivered";

      case OrderStatus.outForDelivery:
        return "Out for delivery";
      case OrderStatus.shipped:
        return "Shipped";
      case OrderStatus.placed:
        return "Placed";
      case OrderStatus.confirmed:
        return "Confirmed";
    }
  }
}
