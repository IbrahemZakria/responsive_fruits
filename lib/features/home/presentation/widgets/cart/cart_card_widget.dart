import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home/domain/entities/cart_item_entity.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/cart/cart_icon.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        context.push('/product', extra: cartItemEntity.productEntity);
      },
      child: Card(
        child: IntrinsicHeight(
          child: Row(
            children: [
              SizedBox(
                width: size.width * .19,
                height: 80,

                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                  child: CachedNetworkImage(
                    width: size.width * .14,
                    fit: BoxFit.cover,
                    imageUrl:
                        "https://www.bigfootdigital.co.uk/wp-content/uploads/2020/07/image-optimisation-scaled.jpg",
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(
                        color: AppColors.kprimarycolor,
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
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
                              context.read<CartCubit>().decreaseProductCount(
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
