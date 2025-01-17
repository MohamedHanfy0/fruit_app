import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_styles.dart';
import 'package:fruit_app/core/utils/constans.dart';
import 'package:fruit_app/features/auth/presentaion/views/widgets/custom_checkbox.dart';

class TermsAndCondations extends StatefulWidget {
  const TermsAndCondations({
    super.key,
    required this.onChanged,
  });
  final ValueChanged<bool> onChanged;

  @override
  State<TermsAndCondations> createState() => _TermsAndCondationsState();
}

class _TermsAndCondationsState extends State<TermsAndCondations> {
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
          onChanged: (value) {
             isAccepted = value;
            widget.onChanged(value);
            setState(() {
             
            });
          },
        )
      ],
    );
  }
}
