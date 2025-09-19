class ProductEntity {
  final String name;
  final String price;
  final String? discountText;
  final String image;

  ProductEntity({
    required this.name,
    required this.price,
    this.discountText,
    required this.image,
  });
}
