import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:responsive_fruits/core/constant/constant_end_points.dart';
import 'package:responsive_fruits/core/constant/constant_string.dart';
import 'package:responsive_fruits/core/network/api_servises.dart';
import 'package:responsive_fruits/core/network/error/failures.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/features/auth/data/models/login_model/login_model.dart';
import 'package:responsive_fruits/features/auth/data/models/regester_model/regester_model.dart';
import 'package:responsive_fruits/features/auth/domain/entities/add_regester_entity.dart';
import 'package:responsive_fruits/features/auth/domain/entities/user_entity.dart';
import 'package:responsive_fruits/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiServices apiServises;
  AuthRepoImpl({required this.apiServises});
  @override
  Future<Either<Failures, void>> createUserWithEmailAndPassword({
    required AddRegesterEntity addRegesterEntity,
  }) async {
    var response = await apiServises.postData(
      endpoint: ConstantEndPoints.register,
      data: addRegesterEntity.toJson(),
    );
    RegesterModel regesterModel = RegesterModel.fromJson(response);
    if (regesterModel.status == true) {
      return Right(null);
    } else {
      return Left(ServerError(regesterModel.errorMessage!));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    var response = await apiServises.postData(
      header: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      endpoint: ConstantEndPoints.login,
      data: {"phone_email": email, "password": password},
    );
    LoginModel loginModel = LoginModel.fromJson(response);
    if (loginModel.status == true) {
      SharedPreferance.setData(key: ConstantString.islogin, value: true);

      return Right(UserEntity.fromUserModel(loginModel.data!));
    } else {
      return Left(ServerError(loginModel.message!));
    }
  }
}
