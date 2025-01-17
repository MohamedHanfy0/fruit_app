import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_app/core/errors/exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword ${e.toString()} code ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور المقدمة ضعيفة جدًا.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'انت غير متصل بالانترنت !');
      } else {
        throw CustomException(
            message: '. حدث خطأ. يرجى المحاولة مرة أخرى لاحقا ');
      }
    } catch (e) {
      log('Error in FirebaseAuthServce.createUserWithEmailAndPassword ${e.toString()}');
      throw CustomException(
          message: 'حدث خطأ. يرجى المحاولة مرة أخرى في وقت لاحق.');
    }
  }


   Future<User> signInUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.signInUserWithEmailAndPassword ${e.toString()} code ${e.code}');
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'لم يتم العثور على مستخدم لهذا البريد الإلكتروني.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'تم توفير كلمة مرور خاطئة لهذا المستخدم.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'انت غير متصل بالانترنت !');
      } else {
        throw CustomException(
            message: '. حدث خطأ. يرجى المحاولة مرة أخرى لاحقا ');
      }
    } catch (e) {
      log('Error in FirebaseAuthServce.signInUserWithEmailAndPassword ${e.toString()}');
      throw CustomException(
          message: 'حدث خطأ. يرجى المحاولة مرة أخرى في وقت لاحق.');
    }
  }
}
