part of 'cart_cubit.dart';

abstract class CartState {
  const CartState();
}

class CartInitial extends CartState {}

class AddProductToCartState extends CartState {
  final List<CartItemEntity> cartsItems;

  AddProductToCartState({required this.cartsItems});

  Null get cartEntity => null;
}

class RemovrProductFromCartState extends CartState {
  final List<CartItemEntity> cartsItems;

  RemovrProductFromCartState({required this.cartsItems});

  Null get cartEntity => null;
}
