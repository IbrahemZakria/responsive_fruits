import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_bottom_bottton.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_header.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 32),

            AuthHeader(supTitel: S.of(context).enter_received_otp),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    child: OtpTextField(
                      numberOfFields: 5,
                      borderColor: Color(0xFF512DA8),
                      showFieldAsBox: true, // خليه true
                      fieldWidth: 50,
                      borderRadius: BorderRadius.circular(
                        30,
                      ), // يخلي الشكل دائري
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ), // يخليها كـ circle
                          borderSide: BorderSide(color: Color(0xFF512DA8)),
                        ),
                      ),
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text(
                                'Code entered is $verificationCode',
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),

            AuthBottomBottton(
              titel1: S.of(context).not_received,
              titel2: S.of(context).send_again,
              textButton: S.of(context).confirm,

              textTap: () {},
              buttonTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
