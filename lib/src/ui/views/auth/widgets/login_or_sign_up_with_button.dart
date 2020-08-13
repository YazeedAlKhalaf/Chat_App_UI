import 'package:chat_app_ui/src/ui/global/app_colors.dart';
import 'package:chat_app_ui/src/ui/global/ui_helpers.dart';
import 'package:flutter/material.dart';

class LoginOrSignUpWithButton extends StatelessWidget {
  final Function() onPressed;
  final String socialMediaName;
  final Color socialMediaColor;
  final IconData socialMediaIcon;
  final bool isLogin;

  const LoginOrSignUpWithButton({
    @required this.onPressed,
    @required this.socialMediaName,
    @required this.socialMediaColor,
    @required this.socialMediaIcon,
    this.isLogin = true,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: socialMediaColor,
      onPressed: () {},
      child: Container(
        color: socialMediaColor,
        constraints: BoxConstraints(
          maxWidth: 300.0,
          minHeight: 50.0,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              socialMediaIcon,
              color: textColorWhite,
            ),
            horizontalSpaceSmall(context),
            Opacity(
              opacity: 0.5,
              child: Container(
                height: 30,
                child: VerticalDivider(
                  thickness: 1.0,
                  width: 5.0,
                  color: lynchColor,
                ),
              ),
            ),
            horizontalSpaceSmall(context),
            Text(
              '${isLogin ? 'Login' : 'Sign Up'} with $socialMediaName',
              style: TextStyle(
                color: textColorWhite,
                fontSize: blockSize(context) * 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
