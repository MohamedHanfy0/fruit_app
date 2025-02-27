
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.uId, required super.email, required super.name});
  factory UserModel.fromFirebaseUser(User user){
    return UserModel(
      uId: user.uid,
       email: user.email ?? '',
        name: user.displayName ?? '');
  }
}