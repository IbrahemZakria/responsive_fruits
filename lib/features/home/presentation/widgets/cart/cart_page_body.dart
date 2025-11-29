import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/cart/card_list_view.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/cart/products_number_text.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ProductsNumberText(
                  text: S
                      .of(context)
                      .cartItemsCount(
                        context
                            .read<CartCubit>()
                            .cartEntity
                            .cartProducts
                            .length,
                      ),
                ),
              ),

              CardListView(),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 16),
                    CustomButton(
                      onTap: () {
                        if (context
                            .read<CartCubit>()
                            .cartEntity
                            .cartProducts
                            .isNotEmpty) {
                          context.push('/checkout');
                        }
                      },
                      text: S
                          .of(context)
                          .paymentAmount(
                            context
                                .watch<CartCubit>()
                                .cartEntity
                                .calculateTotalPrice(),
                          ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
