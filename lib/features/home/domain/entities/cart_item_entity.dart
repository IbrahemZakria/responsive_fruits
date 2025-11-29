import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'product_entity.dart';

part 'cart_item_entity.g.dart';

@HiveType(typeId: 1) // different id
class CartItemEntity with EquatableMixin {
  @HiveField(0)
  final ProductEntity productEntity;

  @HiveField(1)
  final int productCount;

  CartItemEntity({required this.productEntity, required this.productCount});

  double calculateTotalPrice() {
    return productEntity.price * productCount;
  }

  CartItemEntity increaseCount() {
    return CartItemEntity(
      productEntity: productEntity,
      productCount: productCount + 1,
    );
  }

  CartItemEntity decreaseCount() {
    return CartItemEntity(
      productEntity: productEntity,
      productCount: productCount == 0 ? 0 : productCount - 1,
    );
  }

  @override
  List<Object?> get props => [productEntity, productCount];
}
