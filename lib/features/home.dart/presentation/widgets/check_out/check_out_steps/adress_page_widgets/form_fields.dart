import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custome_text_form_field.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class FormFields extends StatelessWidget {
  const FormFields({
    super.key,
    required this.name,
    required this.email,
    required this.adress,
    required this.city,
    required this.appartement,

    required this.phone,
  });

  final TextEditingController phone;
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController adress;
  final TextEditingController city;
  final TextEditingController appartement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeTextFormField(
          onSaved: (value) {},
          controller: name,
          hintText: S.of(context).name,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).please_enter_your_name;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
        CustomeTextFormField(
          onSaved: (value) {},
          textType: TextInputType.emailAddress,
          controller: email,
          hintText: S.of(context).email,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).please_enter_your_email;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
        CustomeTextFormField(
          onSaved: (value) {},
          controller: adress,
          hintText: S.of(context).address,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).please_enter_address;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
        CustomeTextFormField(
          onSaved: (value) {},
          controller: city,
          hintText: S.of(context).city,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).please_enter_city;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),

        CustomeTextFormField(
          controller: appartement,
          hintText: S.of(context).floor_apartment,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).please_enter_floor_apartment;
            }

            return null; // valid
          },
        ),

        SizedBox(height: 16),
        CustomeTextFormField(
          onSaved: (value) {},
          controller: phone,
          hintText: S.of(context).phone,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).please_enter_phone;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
