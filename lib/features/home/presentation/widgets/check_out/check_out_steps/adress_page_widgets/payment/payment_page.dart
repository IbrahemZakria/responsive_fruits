import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custome_text_form_field.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/check_out/check_out_steps/adress_page_widgets/payment/payment_opetion.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class PaymentPage extends StatelessWidget {
  PaymentPage({super.key});

  final ValueNotifier<String?> selectedPayment = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    var cart = context.read<CartCubit>();
    Size size = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).couponCode,
                  style: AppTextSyles.textStyle16b(context),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: CustomeTextFormField(
                        hintText: S.of(context).haveCoupon,
                      ),
                    ),
                    const SizedBox(width: 8),
                    CustomButton(
                      width: size.width > 800 ? size.width * .1 : 100,
                      onTap: () {},
                      text: S.of(context).submit,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  S.of(context).orderDetails,
                  style: AppTextSyles.textStyle16b(context),
                ),
                const SizedBox(height: 8),
                ListTile(
                  dense: true,
                  title: Text(S.of(context).totalItems),
                  trailing: Text(
                    "${cart.cartEntity.cartProducts.length} Items in cart",
                  ),
                ),
                ListTile(
                  dense: true,
                  title: Text(S.of(context).subtotal),
                  trailing: Text(
                    cart.cartEntity.calculateTotalPrice().toString(),
                  ),
                ),
                ListTile(
                  dense: true,
                  title: Text(S.of(context).shippingCharges),
                  trailing: const Text("1.50 KD"),
                ),
                const Divider(),
                ListTile(
                  dense: true,
                  title: Text(
                    S.of(context).bagTotal,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  trailing: Text(
                    "${cart.cartEntity.calculateTotalPrice() + 1.5}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  S.of(context).payment,
                  style: AppTextSyles.textStyle16b(context),
                ),
                ValueListenableBuilder<String?>(
                  valueListenable: selectedPayment,
                  builder: (context, value, _) {
                    return PaymentOptions(
                      selected: value,
                      onChanged: (newValue) => selectedPayment.value = newValue,
                    );
                  },
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(height: 70, onTap: () {}, text: "Continue"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
