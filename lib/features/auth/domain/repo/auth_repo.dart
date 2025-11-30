import 'package:dartz/dartz.dart';
import 'package:responsive_fruits/core/network/error/failures.dart';
import 'package:responsive_fruits/features/auth/domain/entities/add_regester_entity.dart';
import 'package:responsive_fruits/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failures, void>> createUserWithEmailAndPassword({
    required AddRegesterEntity addRegesterEntity,
  });
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
