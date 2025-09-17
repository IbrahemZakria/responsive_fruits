import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';

class WhatsAppForm extends StatefulWidget {
  const WhatsAppForm({super.key, required this.titel, required this.hintText});

  final String titel, hintText;

  @override
  State<WhatsAppForm> createState() => _WhatsAppFormState();
}

class _WhatsAppFormState extends State<WhatsAppForm> {
  final TextEditingController controller = TextEditingController();

  // القيمة المختارة
  String selectedCode = "KW";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.titel, style: AppTextSyles.textStyle13re(context)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            prefixIcon: SizedBox(
              width: 80,
              child: Center(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedCode, // القيمة الحالية
                    items: ['KW', 'EG', 'SA'].map((code) {
                      return DropdownMenuItem(value: code, child: Text(code));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCode = value!; // تحديث القيمة
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
