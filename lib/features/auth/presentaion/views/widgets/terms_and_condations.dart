import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_styles.dart';
import 'package:fruit_app/core/utils/constans.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/custom_checkbox.dart';

class terms_and_condations extends StatefulWidget {
  const terms_and_condations({
    super.key,
  });

  @override
  State<terms_and_condations> createState() => _terms_and_condationsState();
}

class _terms_and_condationsState extends State<terms_and_condations> {
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width:
              MediaQuery.sizeOf(context).width - (kHorizintalPadding * 2) - 48,
          child: Text.rich(
            textAlign: TextAlign.right,
            TextSpan(children: [
              TextSpan(
                text: "  من خلال إنشاء حساب ، فإنك توافق ",
                style: AppStyles.semiBold13.copyWith(
                  color: Color(0xff949D9E),
                ),
              ),
              TextSpan(
                text: "على الشروط والأحكام الخاصة بنا",
                style: AppStyles.semiBold13.copyWith(
                  color: Color(0xff2D9F5D),
                ),
              ),
            ]),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        CustomCheckbox(
          isCheck: isAccepted,
          onChanged: (bool value) {
            isAccepted = value;
            setState(() {});
          },
        )
      ],
    );
  }
}
