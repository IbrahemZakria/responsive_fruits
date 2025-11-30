import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/user_message.dart';
import 'package:responsive_fruits/features/auth/domain/entities/add_regester_entity.dart';
import 'package:responsive_fruits/features/auth/presentation/cubits/redester/regester_cubit.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_in.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_bottom_bottton.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/phone/sign_with_phone_items.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_header.dart';
import 'package:responsive_fruits/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class PhoneBody extends StatefulWidget {
  const PhoneBody({super.key});

  @override
  State<PhoneBody> createState() => _PhoneBodyState();
}

class _PhoneBodyState extends State<PhoneBody> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  final TextEditingController fullNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    fullNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegesterCubit, RegesterState>(
      listener: (context, state) {
        if (state is RegesterSuccess) {
          GoRouter.of(context).go(SignIn.routeName);
        } else if (state is RegesterError) {
          showUserMessage(message: state.message, backgroundColor: Colors.red);
        }
      },
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * .051,
            ),
            child: Column(
              children: [
                SizedBox(height: 32),

                AuthHeader(supTitel: S.of(context).sign_up_to_wikala),
                SizedBox(height: 32),
                SignWithPhoneItems(
                  emailController: emailController,
                  phoneNumberController: phoneNumberController,
                  passwordController: passwordController,
                  confirmPasswordController: confirmPasswordController,
                  fullNameController: fullNameController,
                ),
                SizedBox(height: 32),
                AuthBottomBottton(
                  textButton: S.of(context).sign_up,
                  titel1: S.of(context).already_have_account,
                  titel2: S.of(context).login,
                  textTap: () {},
                  buttonTap: () {
                    if (formKey.currentState!.validate()) {
                      context
                          .read<RegesterCubit>()
                          .createUserWithEmailAndPassword(
                            addRegesterEntity: AddRegesterEntity(
                              email: emailController.text,
                              phone: phoneNumberController.text,
                              password: passwordController.text,
                              confirmPassword: confirmPasswordController.text,
                              name: fullNameController.text,
                            ),
                          );
                      if (context.read<RegesterCubit>().state
                          is RegesterSuccess) {
                        GoRouter.of(context).go(SignIn.routeName);
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
