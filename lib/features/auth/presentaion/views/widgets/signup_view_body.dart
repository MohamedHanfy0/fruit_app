// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/helper_funcions/build_errors_bar.dart';

import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_styles.dart';
import 'package:fruit_app/core/utils/constans.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/core/widgets/password_field.dart';
import 'package:fruit_app/core/widgets/text_from_field.dart';
import 'package:fruit_app/features/auth/presentaion/sign_up_cubits/cubit/signup_cubit.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/terms_and_condations.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    late String email, password, userName;
    bool isAccepted = false;
    GlobalKey<FormState> formState = GlobalKey();
    // ignore: unused_local_variable
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
            left: kHorizintalPadding, right: kHorizintalPadding, top: 24),
        child: Form(
          key: formState,
          child: Column(
            spacing: 16,
            children: [
              TextFromField(
                hintText: 'الاسم كامل',
                textInputType: TextInputType.name,
                onSaved: (value) {
                  userName = value!;
                },
              ),
              TextFromField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                },
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              TermsAndCondations(
                onChanged: (value) {
                    isAccepted = value;
                  
                },
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'إنشاء حساب جديد',
                onPressed: () async {
                  if (formState.currentState!.validate()) {
                    formState.currentState!.save();

                    if (isAccepted) {
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                              email, password, userName);
                    } else {
                      buildErrorBar(
                          context, 'يجب عليك الموافقة علي الشروط والاحكام');
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '  تمتلك حساب بالفعل',
                    style:
                        AppStyles.semBold16.copyWith(color: Color(0xffA4ACAD))),
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.pop(context),
                    text: '؟ تسجيل دخول',
                    style: AppStyles.semBold16
                        .copyWith(color: AppColors.primaryColor))
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
