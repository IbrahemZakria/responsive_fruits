import 'package:hive/hive.dart';

part 'product_entity.g.dart';

@HiveType(typeId: 0) // unique id
class ProductEntity extends HiveObject {
  @HiveField(0)
  final int? amount;

  @HiveField(1)
  final String? productUnit;

  @HiveField(2)
  final String name;

  @HiveField(3)
  final double price;

  @HiveField(4)
  final String? imageUrl;

  @HiveField(5)
  final String description;

  @HiveField(6)
  final String productCode;

  @HiveField(7)
  final int? numberOfMonthExpiration;

  @HiveField(8)
  final int? numberOfCalories;

  @HiveField(9)
  final num? raitingCount;

  @HiveField(10)
  final num? averageCount;

  @HiveField(11)
  final num? sellsCount;

  @HiveField(12)
  final String? discountText;

  @HiveField(13)
  final bool? isFavorite;

  ProductEntity({
    this.isFavorite = false,
    this.discountText,
    this.productUnit,
    this.amount,
    this.sellsCount,
    this.numberOfCalories,
    this.numberOfMonthExpiration,
    this.raitingCount,
    this.averageCount,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.productCode,
  });
}
