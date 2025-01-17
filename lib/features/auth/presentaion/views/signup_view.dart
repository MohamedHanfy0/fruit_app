import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/services/get_it_service.dart';
import 'package:fruit_app/core/widgets/app_bar.dart';
import 'package:fruit_app/features/auth/domain/repos/auth_repos.dart';
import 'package:fruit_app/features/auth/presentaion/sign_up_cubits/cubit/signup_cubit.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/sing_up_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'حساب جديد'),
      body: BlocProvider(
        create: (context) => SignupCubit(getIt<AuthRepo>()),
        child: SIgnUpViewBodyBlocConsumer(),
      ),
    );
  }
}
