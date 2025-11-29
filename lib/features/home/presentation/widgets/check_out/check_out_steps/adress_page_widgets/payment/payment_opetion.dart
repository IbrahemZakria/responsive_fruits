import 'package:flutter/material.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  final String? selected;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioGroup(
          onChanged: onChanged,
          groupValue: selected,
          child: RadioListTile<String>(
            value: "Credit Card/Debit Card",
            title: Text(S.of(context).creditCard),
            secondary: const Icon(Icons.credit_card),
          ),
        ),
        RadioGroup(
          onChanged: onChanged,
          groupValue: selected,
          child: RadioListTile<String>(
            value: "Credit Card/Debit Card",

            title: Text(S.of(context).creditCard),
            secondary: const Icon(Icons.credit_card),
          ),
        ),
        RadioGroup(
          onChanged: onChanged,
          groupValue: selected,
          child: RadioListTile<String>(
            value: "Cash on Delivery",

            title: Text(S.of(context).cashOnDelivery),
            secondary: const Icon(Icons.money),
          ),
        ),
        RadioGroup(
          onChanged: onChanged,
          groupValue: selected,
          child: RadioListTile<String>(
            value: "Knet",

            title: Text(S.of(context).knet),
            secondary: const Icon(Icons.account_balance),
          ),
        ),
      ],
    );
  }
}
