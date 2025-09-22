import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';
import 'package:responsive_fruits/features/home.dart/domain/entities/produt_entity.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/home/product/product_data.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/home/product/product_image_item.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/home/product/selected_option.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/main_home_appbar.dart';

class ProductPage extends StatefulWidget {
  final ProductEntity productEntity;
  const ProductPage({super.key, required this.productEntity});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int? _selectedWeight;
  int? _selectedAddon;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MainHomeAppbar(
        titel: widget.productEntity.name,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        ],
        filter: true,
        leading: MediaQuery.sizeOf(context).width < 1024
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  IconButton(
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.menu),
                  ),
                ],
              )
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ProductImageItem(
                size: size,
                productEntity: widget.productEntity,
              ),
            ),
            SliverToBoxAdapter(
              child: ProductData(productEntity: widget.productEntity),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableOptionsExpansion(
                      title: "Select weight",
                      options: [
                        "50 Gram – 4.00 KD",
                        "1 Kg – 6.25 KD",
                        "2 Kg – 12.00 KD",
                      ],
                      onChanged: (val) {
                        setState(() {
                          _selectedWeight = val;
                        });
                      },
                    ),
                    SelectableOptionsExpansion(
                      title: "Select addons",
                      options: [
                        "Extra 50 Gram – 1.00 KD",
                        "Gift wrap – 0.50 KD",
                      ],
                      onChanged: (val) {
                        setState(() {
                          _selectedAddon = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: CustomButton(
                  width: 100,
                  onTap: () {
                    final weight = _selectedWeight == null
                        ? 'none'
                        : _selectedWeight.toString();
                    final addon = _selectedAddon == null
                        ? 'none'
                        : _selectedAddon.toString();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Selected weight: $weight, addon: $addon',
                        ),
                      ),
                    );
                  },
                  text: "Add to cart",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
