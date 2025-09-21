import 'dart:developer';

import 'package:responsive_fruits/features/home.dart/domain/entities/cart__item_entity.dart';
import 'package:responsive_fruits/features/home.dart/domain/entities/produt_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartProducts;

  CartEntity(this.cartProducts);

  void addProduct({required ProductEntity product}) {
    for (var i = 0; i < cartProducts.length; i++) {
      if (cartProducts[i].productEntity == product) {
        cartProducts[i] = cartProducts[i].increaseCount();
        return;
      }
    }
    cartProducts.add(CartItemEntity(productEntity: product, productCount: 1));
  }

  void decreaseProductCount({required ProductEntity product}) {
    for (var i = 0; i < cartProducts.length; i++) {
      log(
        "Compare ${cartProducts[i].productEntity.productCode} with ${product.productCode}",
      );

      if (cartProducts[i].productEntity == product) {
        if (cartProducts[i].productCount > 1) {
          cartProducts[i] = cartProducts[i].decreaseCount();
        } else {
          cartProducts.removeAt(i);
        }
        return;
      }
    }
  }

  void removeProductCart({required ProductEntity product}) {
    cartProducts.removeWhere(
      (cartProduct) => cartProduct.productEntity == product,
    );
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var element in cartProducts) {
      totalPrice = totalPrice + element.calculateTotalPrice();
    }
    return totalPrice;
  }
}
