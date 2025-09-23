import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_fruits/constant.dart';
import 'package:responsive_fruits/features/home/domain/entities/cart_item_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/cart_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial()) {
    _initCart();
  }

  CartEntity cartEntity = CartEntity([]);

  Future<void> _initCart() async {
    final box = await Hive.openBox<CartItemEntity>(Constant.cartBox);
    cartEntity = CartEntity(box.values.toList());
    emit(AddProductToCartState(cartsItems: cartEntity.cartProducts));
  }

  void addProduct(ProductEntity product) {
    cartEntity.addProduct(product: product);
    emit(AddProductToCartState(cartsItems: cartEntity.cartProducts));
  }

  void decreaseProductCount(ProductEntity product) {
    cartEntity.decreaseProductCount(product: product);
    emit(RemovrProductFromCartState(cartsItems: cartEntity.cartProducts));
  }

  void removeProduct(ProductEntity product) {
    cartEntity.removeProductCart(product: product);
    emit(RemovrProductFromCartState(cartsItems: cartEntity.cartProducts));
  }
}
