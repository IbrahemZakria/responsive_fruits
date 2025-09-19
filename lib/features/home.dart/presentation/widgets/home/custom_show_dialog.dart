import 'package:flutter/material.dart';

class CustomShowDialog extends StatefulWidget {
  const CustomShowDialog({super.key});

  @override
  State<CustomShowDialog> createState() => _CustomShowDialogState();
}

class _CustomShowDialogState extends State<CustomShowDialog> {
  String? selectedArea;
  String? selectedOption; // هنا هنخزن إما "Offers" أو "Free Delivery"

  final List<String> areas = ["Cairo", "Giza", "Alexandria", "Mansoura"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 80, // أقل عرض
          maxWidth: 400, // أقصى عرض
          minHeight: 50, // أقل طول
        ),
        child: SingleChildScrollView(
          child: Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Filter Options",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  /// Choose Area
                  DropdownButtonFormField<String>(
                    value: selectedArea,
                    decoration: const InputDecoration(
                      labelText: "Choose Area",
                      border: OutlineInputBorder(),
                    ),
                    items: areas.map((area) {
                      return DropdownMenuItem(value: area, child: Text(area));
                    }).toList(),
                    onChanged: (value) {
                      setState(() => selectedArea = value);
                    },
                  ),
                  const SizedBox(height: 16),

                  /// Radio Options (Choose only one)
                  RadioListTile<String>(
                    title: const Text("Offers"),
                    value: "Offers",
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() => selectedOption = value);
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text("Free Delivery"),
                    value: "Free Delivery",
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() => selectedOption = value);
                    },
                  ),

                  const SizedBox(height: 20),

                  /// Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Cancel"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, {
                            "area": selectedArea,
                            "option": selectedOption,
                          });
                        },
                        child: const Text("Apply"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
