import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/features/home/domain/entities/order_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/order_steps_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';

ProductEntity dumyproductEntity = ProductEntity(
  name: "Product name",
  price: 120,
  discountText: "Up to 10% Off",
  imageUrl: Assets.resourceImagesBlueberries,
  description: '',
  productCode: '1',
);
List<ProductEntity> dumyproductsEntits = [
  ProductEntity(
    name: "Product name",
    price: 120,
    discountText: "Up to 10% Off",
    imageUrl: Assets.resourceImagesBlueberries,
    description: '',
    productCode: '2',
  ),
  ProductEntity(
    name: "Product name",
    price: 120,
    discountText: "Up to 10% Off",
    imageUrl: Assets.resourceImagesBlueberries,
    description: '',
    productCode: '3',
  ),
  ProductEntity(
    name: "Product name",
    price: 120,
    discountText: "Up to 10% Off",
    imageUrl: Assets.resourceImagesBlueberries,
    description: '',
    productCode: '4',
  ),
  ProductEntity(
    name: "Product name",
    price: 120,
    discountText: "Up to 10% Off",
    imageUrl: Assets.resourceImagesBlueberries,
    description: '',
    productCode: '5',
  ),
  ProductEntity(
    name: "Product name",
    price: 120,
    discountText: "Up to 10% Off",
    imageUrl: Assets.resourceImagesBlueberries,
    description: '',
    productCode: '6',
  ),
];
final List<OrderEntity> dummyOrders = [
  OrderEntity(
    orderId: "243188",
    totalPrice: 37,
    date: DateTime(2023, 9, 9),
    itemsCount: 4,
    status: OrderStatus.delivered,
    paymentMethod: '',
  ),
  OrderEntity(
    orderId: "882610",
    totalPrice: 20,
    date: DateTime(2023, 9, 8),
    itemsCount: 3,
    status: OrderStatus.confirmed,
    paymentMethod: '',
  ),
  OrderEntity(
    orderId: "882611",
    totalPrice: 15,
    date: DateTime(2023, 9, 8),
    itemsCount: 3,
    status: OrderStatus.canceled,
    paymentMethod: '',
  ),
  OrderEntity(
    orderId: "882612",
    totalPrice: 25,
    date: DateTime(2023, 9, 8),
    itemsCount: 3,
    status: OrderStatus.shipped,
    paymentMethod: '',
  ),
  OrderEntity(
    orderId: "882613",
    totalPrice: 30,
    date: DateTime(2023, 9, 8),
    itemsCount: 3,
    status: OrderStatus.delivered,
    paymentMethod: '',
  ),
  OrderEntity(
    orderId: "882614",
    totalPrice: 40,
    date: DateTime(2023, 9, 8),
    itemsCount: 3,
    status: OrderStatus.placed,
    paymentMethod: '',
  ),
];
List<OrderStep> buildOrderSteps(OrderEntity order) {
  return [
    OrderStep(
      title: "Order Placed",
      subtitle: "We have received your order",
      isCompleted: order.status.index >= OrderStatus.placed.index,
    ),
    OrderStep(
      title: "Confirmed",
      subtitle: "Your order has been confirmed",
      isCompleted: order.status.index >= OrderStatus.confirmed.index,
    ),
    OrderStep(
      title: "Order shipped",
      subtitle: "Estimated for 10 September, 2021",
      isCompleted: order.status.index >= OrderStatus.shipped.index,
    ),
    OrderStep(
      title: "Out for delivery",
      subtitle: "Estimated for 10 September, 2021",
      isCompleted: order.status.index >= OrderStatus.outForDelivery.index,
    ),
    OrderStep(
      title: "Delivered",
      subtitle: "Estimated for 10 September, 2021",
      isCompleted: order.status.index >= OrderStatus.delivered.index,
    ),
  ];
}
