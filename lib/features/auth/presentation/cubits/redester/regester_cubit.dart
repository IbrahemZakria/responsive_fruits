import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/user_message.dart';
import 'package:responsive_fruits/features/auth/domain/entities/add_regester_entity.dart';
import 'package:responsive_fruits/features/auth/domain/repo/auth_repo.dart';
import 'package:responsive_fruits/generated/l10n.dart';

part 'regester_state.dart';

class RegesterCubit extends Cubit<RegesterState> {
  RegesterCubit({required this.authRepo}) : super(RegesterInitial());
  final AuthRepo authRepo;

  void createUserWithEmailAndPassword({
    required AddRegesterEntity addRegesterEntity,
  }) async {
    emit(RegesterLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
      addRegesterEntity: addRegesterEntity,
    );
    result.fold(
      (l) {
        log(l.errorMessage);
        showUserMessage(message: l.errorMessage, backgroundColor: Colors.red);
        emit(RegesterError(l.errorMessage));
      },
      (r) {
        showUserMessage(
          message: S.current.sign_up_success,
          backgroundColor: Colors.green,
        );
        emit(RegesterSuccess());
      },
    );
  }
}
