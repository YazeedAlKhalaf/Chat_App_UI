import 'package:chat_app_ui/src/ui/global/app_colors.dart';
import 'package:chat_app_ui/src/ui/global/ui_helpers.dart';
import 'package:chat_app_ui/src/ui/widgets/dumb/app_logo.dart';
import 'package:chat_app_ui/src/ui/widgets/dumb/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './forgot_password_view_model.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotPasswordViewModel>.reactive(
      viewModelBuilder: () => ForgotPasswordViewModel(),
      builder: (
        BuildContext context,
        ForgotPasswordViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: blockSize(context) * 2.5,
                  vertical: blockSize(context) * 3,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                          ),
                          onPressed: () {
                            model.popCurrentContext();
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontSize: blockSize(context) * 3.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMedium(context),
                    AppLogo(
                      size: blockSize(context) * 8,
                    ),
                    verticalSpaceMedium(context),
                    Text(
                      model.forgetPasswordText,
                      style: TextStyle(
                        fontSize: blockSize(context) * 1.5,
                        color: lynchColor,
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    verticalSpaceMedium(context),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF1F2F6),
                        border: InputBorder.none,
                        labelText: 'Enter your email',
                        labelStyle: TextStyle(
                          color: lynchColor,
                        ),
                      ),
                    ),
                    verticalSpaceMedium(context),
                    GradientButton(
                      text: 'Continue',
                      onPressed: () {},
                    ),
                    verticalSpaceSmall(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
