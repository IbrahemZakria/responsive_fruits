import 'package:equatable/equatable.dart';
import 'package:responsive_fruits/features/home.dart/domain/entities/produt_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  final int productCount;

  const CartItemEntity({
    required this.productEntity,
    required this.productCount,
  });

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
