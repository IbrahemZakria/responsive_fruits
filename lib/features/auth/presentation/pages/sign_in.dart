import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/functions/get_it_services.dart';
import 'package:responsive_fruits/features/auth/domain/repo/auth_repo.dart';
import 'package:responsive_fruits/features/auth/presentation/cubits/login/login_cubit.dart';

import 'package:responsive_fruits/features/auth/presentation/widgets/custome_relative_auth_widget.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/sign_in/sign_in_body.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  static const String routeName = "/SignIn";

  @override
  Widget build(BuildContext context) {
    return CustomeRelativeAuthWidget(
      child: BlocProvider(
        create: (context) => LoginCubit(authRepo: getIt<AuthRepo>()),
        child: SignInBody(),
      ),
    );
  }
}
