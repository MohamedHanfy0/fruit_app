
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/features/auth/presentaion/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/signin_view_body.dart';
import 'package:loading_overlay/loading_overlay.dart';

class CustomSignInBodyBlocConsumer extends StatelessWidget {
  const CustomSignInBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {},
      builder: (context, state) {
        return LoadingOverlay(isLoading: state is SignInLoading ? true : false,
        child: SingInViewBody(),);
      },
    );
  }
}

