import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_styles.dart';
import 'package:fruit_app/features/auth/presentaion/views/signup_view.dart';

class dontHaveAccount extends StatelessWidget {
  const dontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignupView.routName);
          },
          child: Text(
            'قم بإنشاء حساب',
            style: AppStyles.semBold16.copyWith(
              color: Color(0xff1B5E37),
            ),
          ),
        ),
        Text(
          ' لا تمتلك حساب؟',
          style: AppStyles.semBold16.copyWith(
            color: Color(0xff616A6B),
          ),
        ),
      ],
    );
  }
}
