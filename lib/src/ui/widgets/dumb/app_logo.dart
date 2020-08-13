import 'package:chat_app_ui/src/ui/global/ui_helpers.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double size;

  const AppLogo({
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/icons/logo.png',
      width: size ?? blockSize(context) * 10,
    );
  }
}
