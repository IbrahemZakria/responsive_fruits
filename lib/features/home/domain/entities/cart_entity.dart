import 'package:hive/hive.dart';
import 'package:responsive_fruits/core/constant/constant_string.dart';
import 'package:responsive_fruits/features/home/domain/entities/cart_item_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartProducts;
  final box = Hive.box<CartItemEntity>(ConstantString.cartBox);

  CartEntity(this.cartProducts);

  // Load cart from Hive when initializing
  void loadFromHive() {
    cartProducts.clear();
    cartProducts.addAll(box.values);
  }

  void addProduct({required ProductEntity product}) {
    for (var i = 0; i < cartProducts.length; i++) {
      if (cartProducts[i].productEntity == product) {
        cartProducts[i] = cartProducts[i].increaseCount();
        box.putAt(i, cartProducts[i]); // حفظ التغيير في Hive
        return;
      }
    }
    var newItem = CartItemEntity(productEntity: product, productCount: 1);
    cartProducts.add(newItem);
    box.add(newItem); // إضافة للـ Hive
  }

  void decreaseProductCount({required ProductEntity product}) {
    for (var i = 0; i < cartProducts.length; i++) {
      if (cartProducts[i].productEntity == product) {
        if (cartProducts[i].productCount > 1) {
          cartProducts[i] = cartProducts[i].decreaseCount();
          box.putAt(i, cartProducts[i]);
        } else {
          cartProducts.removeAt(i);
          box.deleteAt(i);
        }
        return;
      }
    }
  }

  void removeProductCart({required ProductEntity product}) {
    int index = cartProducts.indexWhere(
      (cartProduct) => cartProduct.productEntity == product,
    );
    if (index != -1) {
      cartProducts.removeAt(index);
      box.deleteAt(index);
    }
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var element in cartProducts) {
      totalPrice += element.calculateTotalPrice();
    }
    return totalPrice;
  }
}
