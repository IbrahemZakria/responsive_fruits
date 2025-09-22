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
        RadioListTile<String>(
          value: "Credit Card/Debit Card",
          groupValue: selected,
          onChanged: onChanged,
          title: Text(S.of(context).creditCard),
          secondary: const Icon(Icons.credit_card),
        ),
        RadioListTile<String>(
          value: "Cash on Delivery",
          groupValue: selected,
          onChanged: onChanged,
          title: Text(S.of(context).cashOnDelivery),
          secondary: const Icon(Icons.money),
        ),
        RadioListTile<String>(
          value: "Knet",
          groupValue: selected,
          onChanged: onChanged,
          title: Text(S.of(context).knet),
          secondary: const Icon(Icons.account_balance),
        ),
      ],
    );
  }
}
