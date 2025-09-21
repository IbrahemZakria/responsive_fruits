import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int? amount;
  final String? productUnit;
  final String name;
  final double price;
  final String? imageUrl;
  final String description;
  final String productCode;
  final int? numberOfMonthExpiration;
  final int? numberOfCalories;
  final num? raitingCount;
  final num? averageCount;
  final num? sellsCount;
  final String? discountText;

  const ProductEntity({
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

  @override
  List<Object?> get props => [productCode];
}
