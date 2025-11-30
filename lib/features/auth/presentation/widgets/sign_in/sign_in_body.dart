import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/user_message.dart';
import 'package:responsive_fruits/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/sign_in/sign_in_items.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_header.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_bottom_bottton.dart';
import 'package:responsive_fruits/features/home/presentation/pages/adabtive_main_home_page.dart';
import 'package:responsive_fruits/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          GoRouter.of(context).go('/${AdabtiveMainHomePage.routeName}/home');
        } else if (state is LoginError) {
          showUserMessage(message: state.message, backgroundColor: Colors.red);
        }
      },
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 32),

                AuthHeader(supTitel: S.of(context).login_to_wikala),
                SizedBox(height: 32),

                SignInItems(
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                SizedBox(height: 32),

                AuthBottomBottton(
                  textButton: S.of(context).login,
                  titel1: S.of(context).donot_have_account,
                  titel2: S.of(context).sign_up,
                  textTap: () {
                    Navigator.pop(context);
                  },
                  buttonTap: () {
                    if (formKey.currentState!.validate()) {
                      context.read<LoginCubit>().signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );
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
