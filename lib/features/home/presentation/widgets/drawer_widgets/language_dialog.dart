import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/helper/cubits/localization/localization_cubit.dart';

class LanguageDialog extends StatefulWidget {
  const LanguageDialog({super.key});

  @override
  State<LanguageDialog> createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
  String selectedLang = "en";

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Arabic
            RadioGroup(
              groupValue: selectedLang,
              onChanged: (value) {
                setState(() {
                  selectedLang = value!;
                });
              },
              child: RadioListTile<String>(
                value: "ar",

                title: Row(
                  children: const [
                    Text("🇸🇦", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 8),
                    Text("العربية"),
                  ],
                ),
              ),
            ),

            // English
            RadioGroup(
              groupValue: selectedLang,
              onChanged: (value) {
                setState(() {
                  selectedLang = value!;
                });
              },
              child: RadioListTile<String>(
                value: "en",

                title: Row(
                  children: const [
                    Text("🇺🇸", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 8),
                    Text("English"),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Apply button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color(0xFF174F2D),
                ),
                onPressed: () {
                  context.read<LocalizationCubit>().changeLanguage(
                    selectedLang,
                  );
                  Navigator.pop(context, selectedLang);
                },
                child: const Text("Apply"),
              ),
            ),

            const SizedBox(height: 8),

            // Close button
            Center(
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "Close",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// طريقة الاستدعاء
Future<void> showLanguageDialog(BuildContext context) async {
  final result = await showDialog<String>(
    context: context,
    builder: (context) => const LanguageDialog(),
  );

  if (result != null) {
    debugPrint("Selected language: $result");
  }
}
