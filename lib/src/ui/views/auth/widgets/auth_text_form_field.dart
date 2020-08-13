import 'package:chat_app_ui/src/ui/global/app_colors.dart';
import 'package:chat_app_ui/src/ui/global/ui_helpers.dart';
import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final String labelText;
  final TextStyle labelStyle;
  final bool isPassword;
  final bool obscureText;
  final Widget suffixIcon;

  const AuthTextFormField({
    @required this.labelText,
    this.labelStyle,
    this.isPassword = false,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle ??
            TextStyle(
              color: lynchColor,
              fontSize: blockSize(context) * 1.8,
            ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: lynchColor,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
    );
  }
}
