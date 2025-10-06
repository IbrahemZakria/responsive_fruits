import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/favorite/favorite_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/home/product/product_data.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/home/product/product_image_item.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/home/product/selected_option.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/main_home_appbar.dart';

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
          IconButton(
            onPressed: () {
              context.read<FavoriteCubit>().toggleFavorite(
                widget.productEntity,
              );
            },
            icon:
                context.watch<FavoriteCubit>().isFavorite(
                  widget.productEntity.productCode,
                )
                ? Icon(Icons.favorite, color: Colors.red)
                : Icon(Icons.favorite_border_outlined),
          ),
        ],
        filter: true,
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
                    context.read<CartCubit>().addProduct(widget.productEntity);
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
