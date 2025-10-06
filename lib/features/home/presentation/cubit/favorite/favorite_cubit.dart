import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial()) {
    _initFavorites();
  }

  late Box<ProductEntity> _favoritesBox;
  List<ProductEntity> favorites = [];

  Future<void> _initFavorites() async {
    _favoritesBox = await Hive.openBox<ProductEntity>('favoritesBox');
    favorites = _favoritesBox.values.toList();
    emit(FavoriteLoaded(favorites: favorites));
  }

  void toggleFavorite(ProductEntity product) {
    final existingIndex = favorites.indexWhere(
      (p) => p.productCode == product.productCode,
    );

    if (existingIndex >= 0) {
      // Remove from favorites
      favorites.removeAt(existingIndex);
      _favoritesBox.delete(product.productCode);
    } else {
      // Add to favorites
      favorites.add(product);
      _favoritesBox.put(product.productCode, product);
    }

    emit(FavoriteLoaded(favorites: favorites));
  }

  bool isFavorite(String productCode) {
    return favorites.any((p) => p.productCode == productCode);
  }
}
