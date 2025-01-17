import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/services/get_it_service.dart';
import 'package:fruit_app/core/widgets/app_bar.dart';
import 'package:fruit_app/features/auth/domain/repos/auth_repos.dart';
import 'package:fruit_app/features/auth/presentaion/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/custom_sign_in_body_bloc_consumer.dart';


class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const String routName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "تسجيل دخول"),
      body: BlocProvider(
        create: (context) => SignInCubit(getIt<AuthRepo>()),
        child: CustomSignInBodyBlocConsumer(),
      ),
    );
  }
}
