import 'package:dartz/dartz.dart';
import 'package:fruit_app/core/errors/failure.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo  {
  // hello
  Future<Either<Failure, UserEntity>> createWithEmailAndPassword(
      String email, String password, String name,);
}
