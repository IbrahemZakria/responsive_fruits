import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/dumy_data/dumy_data.dart';
import 'package:responsive_fruits/features/home/domain/entities/order_entity.dart';

class OrderTrackingTimeline extends StatelessWidget {
  final OrderEntity order;

  const OrderTrackingTimeline({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final steps = buildOrderSteps(order);

    return Column(
      children: List.generate(steps.length, (index) {
        final step = steps[index];
        final isLast = index == steps.length - 1;

        // لو اللي بعده completed => الخط أخضر، غير كده رمادي
        final lineColor =
            (index < steps.length - 1 && steps[index + 1].isCompleted)
            ? Colors.green
            : Colors.grey.shade400;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Circle + line
            Column(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: step.isCompleted ? Colors.green : Colors.white,
                    border: Border.all(color: Colors.green, width: 2),
                    shape: BoxShape.circle,
                  ),
                ),
                if (!isLast) Container(width: 2, height: 50, color: lineColor),
              ],
            ),
            const SizedBox(width: 12),
            // Texts
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      step.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: step.isCompleted ? Colors.green : Colors.black,
                      ),
                    ),
                    Text(
                      step.subtitle,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
