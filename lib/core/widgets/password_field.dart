import 'package:flutter/material.dart';
import 'package:fruit_app/core/widgets/text_from_field.dart';

class PasswordField extends StatefulWidget {
  final void Function(String?) onSaved;
  const PasswordField({
    super.key,
    required this.onSaved,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFromField(
      
      obscureText: obscureText,
      hintText: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      icon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        child: Icon(
          obscureText ? Icons.remove_red_eye_sharp : Icons.visibility_off,
          color: Color(0xffC9CECF),
        ),
      ),
      onSaved: widget.onSaved,
    );
  }
}
