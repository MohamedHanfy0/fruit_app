import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_app/core/errors/exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password ,}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور المقدمة ضعيفة جدًا.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني.'
         
            
            );
      } else {
        throw CustomException(
            message: '. حدث خطأ. يرجى المحاولة مرة أخرى لاحقا ');
      }
    } catch (e) {
      throw CustomException(
          message: 'حدث خطأ. يرجى المحاولة مرة أخرى في وقت لاحق.');
    }
  }
}


