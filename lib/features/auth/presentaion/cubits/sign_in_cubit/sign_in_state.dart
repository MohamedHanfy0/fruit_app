part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}

final class SignInFialure extends SignInState {
  final String message;

  SignInFialure({required this.message});
}

final class SignInSuccess extends SignInState {
  final UserEntity userEntity;
  SignInSuccess({required this.userEntity});
}
