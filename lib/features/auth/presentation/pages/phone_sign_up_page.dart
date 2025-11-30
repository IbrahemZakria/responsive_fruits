import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/functions/get_it_services.dart';
import 'package:responsive_fruits/features/auth/domain/repo/auth_repo.dart';
import 'package:responsive_fruits/features/auth/presentation/cubits/redester/regester_cubit.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/custome_relative_auth_widget.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/phone/phone_body.dart';

class PhoneSignUpPage extends StatelessWidget {
  const PhoneSignUpPage({super.key});
  static const String routeName = "PhoneSignUpPage";

  @override
  Widget build(BuildContext context) {
    return CustomeRelativeAuthWidget(
      child: BlocProvider(
        create: (context) => RegesterCubit(authRepo: getIt<AuthRepo>()),
        child: PhoneBody(),
      ),
    );
  }
}
