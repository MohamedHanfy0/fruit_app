import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruit_app/core/errors/exception.dart';
import 'package:fruit_app/core/errors/failure.dart';
import 'package:fruit_app/core/services/firebase_auth_service.dart';
import 'package:fruit_app/features/auth/data/repos/models/user_model.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_app/features/auth/domain/repos/auth_repos.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.createWithEmailAndPassword ${e.toString()}');
      return left(
        ServerFailure('حدث خطأ ما. الرجاء المحاولة مرة اخري'),
      );
    }
  }


   @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInUserWithEmailAndPassword ${e.toString()}');
      return left(
        ServerFailure('حدث خطأ ما. الرجاء المحاولة مرة اخري'),
      );
    }
  }
}
