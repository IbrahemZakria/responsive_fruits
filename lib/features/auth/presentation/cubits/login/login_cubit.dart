import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/user_message.dart';
import 'package:responsive_fruits/features/auth/domain/entities/user_entity.dart';
import 'package:responsive_fruits/features/auth/domain/repo/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authRepo}) : super(LoginInitial());
  final AuthRepo authRepo;

  void signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    final result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (l) {
        log(l.errorMessage);
        showUserMessage(message: l.errorMessage, backgroundColor: Colors.red);
        emit(LoginError(l.errorMessage));
      },
      (r) {
        emit(LoginSuccess(r));
      },
    );
  }
}
