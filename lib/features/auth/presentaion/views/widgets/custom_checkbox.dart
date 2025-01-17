import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox(
      {super.key, required this.isCheck, required this.onChanged});

  final bool isCheck;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       
        onChanged(!isCheck);
      },
      child: AnimatedContainer(
          width: 24,
          height: 24,
          duration: Duration(microseconds: 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isCheck ? AppColors.primaryColor : Colors.transparent,
            border: Border.all(
              color: isCheck ? Colors.transparent : Color(0xffDDDFDF),
              width: 1.5,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: SvgPicture.asset('assets/images/Check.svg'),
          )),
    );
  }
}
