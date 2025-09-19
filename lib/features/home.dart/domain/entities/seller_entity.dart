class SellerEntity {
  final String id; // معرف البائع
  final String name; // اسم البائع
  final String logoUrl; // اللوجو
  final double rating; // التقييم
  final double deliveryCharges; // رسوم التوصيل
  final double distance; // المسافة بالكيلومتر
  final String status; // Open or Closed
  final String category; // Beverages, Food, etc.

  const SellerEntity({
    required this.id,
    required this.name,
    required this.logoUrl,
    required this.rating,
    required this.deliveryCharges,
    required this.distance,
    required this.status,
    required this.category,
  });
}
