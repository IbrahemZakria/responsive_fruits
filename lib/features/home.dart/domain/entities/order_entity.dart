enum OrderStatus {
  placed,
  confirmed,
  shipped,
  outForDelivery,
  delivered,
  canceled,
}

class OrderEntity {
  final String orderId;
  final int itemsCount;
  final double totalPrice;
  final String paymentMethod;
  final OrderStatus status;
  final DateTime date;

  OrderEntity({
    required this.orderId,
    required this.date,

    required this.itemsCount,
    required this.totalPrice,
    required this.paymentMethod,
    required this.status,
  });
}
