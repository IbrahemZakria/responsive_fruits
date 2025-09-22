import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/features/home/domain/entities/seller_entity.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/home/seller_item_.dart';

class CustomCursorSlider extends StatelessWidget {
  const CustomCursorSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SellerEntity> images = [
      SellerEntity(
        id: "1",
        name: "Seller name",
        logoUrl: Assets.resourceImagesCherries,
        rating: 4.5,
        deliveryCharges: 0.5,
        distance: 2.5,
        status: "Open",
        category: "Beverages",
      ),
      SellerEntity(
        id: "1",
        name: "Seller name",
        logoUrl: Assets.resourceImagesCherries,
        rating: 4.5,
        deliveryCharges: 0.5,
        distance: 2.5,
        status: "Open",
        category: "Beverages",
      ),
      SellerEntity(
        id: "1",
        name: "Seller name",
        logoUrl: Assets.resourceImagesCherries,
        rating: 4.5,
        deliveryCharges: 0.5,
        distance: 2.5,
        status: "Open",
        category: "Beverages",
      ),
      SellerEntity(
        id: "1",
        name: "Seller name",
        logoUrl: Assets.resourceImagesCherries,
        rating: 4.5,
        deliveryCharges: 0.5,
        distance: 2.5,
        status: "Open",
        category: "Beverages",
      ),
      SellerEntity(
        id: "1",
        name: "Seller name",
        logoUrl: Assets.resourceImagesCherries,
        rating: 4.5,
        deliveryCharges: 0.5,
        distance: 2.5,
        status: "Open",
        category: "Beverages",
      ),
    ];

    final size = MediaQuery.sizeOf(context);

    final double minHeight = 100;

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: size.width, minWidth: 250),
        child: CarouselSlider(
          options: CarouselOptions(
            height: minHeight + 30,
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
          ),
          items: images.map((e) {
            return SellerItem(seller: e);
          }).toList(),
        ),
      ),
    );
  }
}
