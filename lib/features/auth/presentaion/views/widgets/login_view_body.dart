import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_styles.dart';
import 'package:fruit_app/core/utils/constans.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/core/widgets/text_from_field.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/dont_have_account.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/or_divider.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            SizedBox(),
            TextFromField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress, onSaved: (value) {  },
            ),
            TextFromField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              icon: Icon(
                Icons.remove_red_eye_sharp,
                color: Color(0xffC9CECF),
              ), onSaved: (value) {  },
            ),
            Container(
              margin: EdgeInsets.only(bottom: 17),
              alignment: Alignment.centerLeft,
              child: Text(
                'نسيت كلمة المرور؟',
                style: AppStyles.semiBold13
                    .copyWith(color: AppColors.lightPrimarayColor),
              ),
            ),
            CustomButton(onPressed: () {}, text: 'تسجيل دخول'),
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
    );
  }
}
