import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_styles.dart';
import 'package:fruit_app/core/utils/constans.dart';
import 'package:fruit_app/core/widgets/app_bar.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/core/widgets/password_field.dart';
import 'package:fruit_app/core/widgets/text_from_field.dart';
import 'package:fruit_app/features/auth/presentaion/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/dont_have_account.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/or_divider.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/social_login_button.dart';

class SingInViewBody extends StatefulWidget {
  const SingInViewBody({super.key});

  @override
  State<SingInViewBody> createState() => _SingInViewBodyState();
}

class _SingInViewBodyState extends State<SingInViewBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formState,
          autovalidateMode: autovalidateMode,
          child: Column(
            spacing: 16,
            children: [
              SizedBox(),
              TextFromField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                },
              ),
              PasswordField(onSaved: (value) {
                password = value!;
              }),
              Container(
                margin: EdgeInsets.only(bottom: 17),
                alignment: Alignment.centerLeft,
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: AppStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimarayColor),
                ),
              ),
              CustomButton(
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      formState.currentState!.save();
                      context.read<SignInCubit>().signInUser(email, password);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {
                        
                      });
                    }
                  },
                  text: 'تسجيل دخول'),
              SizedBox(
                height: 2,
              ),
              dontHaveAccount(),
              SizedBox(
                height: 17,
              ),
              OrDivider(),
              SizedBox(
                height: 15,
              ),
              Column(
                spacing: 16,
                children: [
                  SocialLoginButton(
                    onPressed: () {},
                    title: "تسجيل بواسطة جوجل",
                    image: 'assets/images/google.svg',
                  ),
                  SocialLoginButton(
                    onPressed: () {},
                    title: "تسجيل بواسطة أبل",
                    image: 'assets/images/apple.svg',
                  ),
                  SocialLoginButton(
                    onPressed: () {},
                    title: "تسجيل بواسطة فيسبوك",
                    image: 'assets/images/facebook.svg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
