import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home.dart/domain/entities/cart__item_entity.dart';
import 'package:responsive_fruits/features/home.dart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/product_page.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/cart/cart_icon.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                ProductPage(productEntity: cartItemEntity.productEntity),
          ),
        );
      },
      child: Card(
        child: IntrinsicHeight(
          child: Row(
            children: [
              Container(
                width: size.width * .19,
                color: AppColors.lightgray,
                child: Center(
                  child: CachedNetworkImage(
                    width: size.width * .14,
                    fit: BoxFit.fitHeight,
                    imageUrl: cartItemEntity.productEntity.imageUrl!,
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(
                        color: AppColors.kprimarycolor,
                      ),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            cartItemEntity.productEntity.name,
                            style: AppTextSyles.textStyle13b(context),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              context.read<CartCubit>().removeProduct(
                                cartItemEntity.productEntity,
                              );
                            },
                            child: SvgPicture.asset(Assets.resourceImagesTrash),
                          ),
                        ],
                      ),
                      Text(
                        "${cartItemEntity.productCount.toString()} ${cartItemEntity.productEntity.productUnit}",
                        style: AppTextSyles.textStyle13re(
                          context,
                        ).copyWith(color: Colors.orange),
                      ),
                      Row(
                        children: [
                          CartIcon(
                            onTap: () {
                              context.read<CartCubit>().addProduct(
                                cartItemEntity.productEntity,
                              );
                            },
                          ),
                          SizedBox(width: 8),
                          Text(
                            cartItemEntity.productCount.toString(),
                            style: AppTextSyles.textStyle13b(context),
                          ),
                          SizedBox(width: 8),

                          CartIcon(
                            onTap: () {
                              context.read<CartCubit>().decreaseproductcount(
                                cartItemEntity.productEntity,
                              );
                            },
                            backGroundColor: AppColors.lightgray,
                            icon: Icons.remove,
                            iconColor: Colors.grey,
                          ),

                          Spacer(),
                          Text(
                            "${cartItemEntity.calculateTotalPrice().toString()}  جنيه",
                            style: AppTextSyles.textStyle13b(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
