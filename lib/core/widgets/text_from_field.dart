import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_styles.dart';

class TextFromField extends StatelessWidget {
  const TextFromField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.icon,
      required this.onSaved,
      this.obscureText = false});
  final String hintText;
  final TextInputType textInputType;
  final Widget? icon;
  final bool obscureText;
  final void Function(String?) onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: (value) {
        if (value!.isEmpty) {
          return 'الحقل فارغ';
        }
        return null;
      },
      onSaved: onSaved,
      textDirection: TextDirection.rtl,
      keyboardType: textInputType,
      decoration: InputDecoration(
          prefixIcon: icon,
          hintTextDirection: TextDirection.rtl,
          hintText: hintText,
          hintStyle: AppStyles.semiBold13.copyWith(color: Color(0xff949D9E)),
          filled: true,
          fillColor: Color(0xffF9FAFA),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: Color(0xffE6E9EA),
        width: 1,
      ),
    );
  }
}
