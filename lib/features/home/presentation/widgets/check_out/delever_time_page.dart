import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';

class DeliveryTimePage extends StatefulWidget {
  const DeliveryTimePage({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<DeliveryTimePage> createState() => _DeliveryTimePageState();
}

class _DeliveryTimePageState extends State<DeliveryTimePage> {
  String? selectedOption = "now"; // الافتراضي Now
  DateTime? selectedDate; // التاريخ اللي المستخدم هيختاره

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // التاريخ الافتراضي
      firstDate: DateTime.now(), // من النهاردة
      lastDate: DateTime(2100), // لحد 2100
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
        selectedOption = "later"; // لما يختار تاريخ يتحط على الاختيار التاني
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: [
          // ✅ الاختيار الأول (Now)
          SliverToBoxAdapter(
            child: Column(
              children: [
                RadioListTile<String>(
                  value: "now",
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  title: const Text("Now"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.grey),
                  ),
                ),

                const SizedBox(height: 16),

                // ✅ الاختيار الثاني (Select Delivery Time مع DatePicker)
                RadioListTile<String>(
                  value: "later",
                  groupValue: selectedOption,
                  onChanged: (value) async {
                    await _pickDate(context);
                  },
                  title: GestureDetector(
                    onTap: () async {
                      await _pickDate(
                        context,
                      ); // حتى لو هو مختار تقدر تضغط وتغير
                    },
                    child: const Text("Select Delivery Time"),
                  ),
                  subtitle: selectedDate == null
                      ? const Text("No date selected")
                      : Text(
                          "${selectedDate!.day} - ${selectedDate!.month} - ${selectedDate!.year}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  height: 70,
                  onTap: () {
                    // ✅ استخدام النتيجة
                    widget.pageController.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceIn,
                    );
                  },
                  text: "Continue",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
