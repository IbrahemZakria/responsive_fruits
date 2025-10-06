part of 'favorite_cubit.dart';

abstract class FavoriteState {
  const FavoriteState();
}

class FavoriteInitial extends FavoriteState {}

class FavoriteLoaded extends FavoriteState {
  final List<ProductEntity> favorites;

  FavoriteLoaded({required this.favorites});
}
