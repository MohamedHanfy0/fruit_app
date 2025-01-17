import 'package:flutter/material.dart';
import 'package:fruit_app/core/widgets/app_bar.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "تسجيل دخول"),
      body: LoginViewBody(),
    );
  }
}
