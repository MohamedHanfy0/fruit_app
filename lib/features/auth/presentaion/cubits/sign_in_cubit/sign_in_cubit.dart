import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fruit_app/core/errors/failure.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_app/features/auth/domain/repos/auth_repos.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());

  final AuthRepo authRepo;

  Future<void> signInUser(String email, String password) async {
    emit(SignInLoading());
    var result =
        await authRepo.signInWithEmailAndPassword(email, password);
    result.fold((failure) => emit(SignInFialure(message: failure.message)),
        (userEntity) => emit(SignInSuccess(userEntity: userEntity)));
  }
}
