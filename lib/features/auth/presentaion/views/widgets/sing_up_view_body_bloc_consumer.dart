import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/helper_funcions/build_errors_bar.dart';
import 'package:fruit_app/features/auth/presentaion/sign_up_cubits/cubit/signup_cubit.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/signup_view_body.dart';
import 'package:loading_overlay/loading_overlay.dart';

class SIgnUpViewBodyBlocConsumer extends StatelessWidget {
  const SIgnUpViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {}
        if (state is SignupFialure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return LoadingOverlay(
            isLoading: state is SignupLoading ? true : false,
            child: SignupViewBody());
      },
    );
  }

 
}
