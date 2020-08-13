import 'package:chat_app_ui/src/ui/global/app_colors.dart';
import 'package:chat_app_ui/src/ui/global/ui_helpers.dart';
import 'package:chat_app_ui/src/ui/views/auth/widgets/auth_text_form_field.dart';
import 'package:chat_app_ui/src/ui/views/auth/widgets/login_or_sign_up_with_button.dart';
import 'package:chat_app_ui/src/ui/widgets/dumb/app_logo.dart';
import 'package:chat_app_ui/src/ui/widgets/dumb/gradient_button.dart';
import 'package:chat_app_ui/src/ui/widgets/dumb/text_link.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import './sign_up_view_model.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      viewModelBuilder: () => SignUpViewModel(),
      builder: (
        BuildContext context,
        SignUpViewModel model,
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
                        Text(
                          'Sign Up',
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
                    Form(
                      child: Column(
                        children: <Widget>[
                          AuthTextFormField(
                            labelText: 'Full Name',
                          ),
                          AuthTextFormField(
                            labelText: 'Email',
                          ),
                          AuthTextFormField(
                            labelText: 'Password',
                            obscureText: model.showPassword,
                            suffixIcon: IconButton(
                              icon: Icon(
                                model.showPassword
                                    ? FontAwesomeIcons.eyeSlash
                                    : FontAwesomeIcons.eye,
                              ),
                              onPressed: () {
                                model.setShowPassword(!model.showPassword);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceMedium(context),
                    GradientButton(
                      text: 'Sign Up',
                      onPressed: () {},
                    ),
                    verticalSpaceSmall(context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            color: lynchColor,
                          ),
                        ),
                        TextLink(
                          'Sign In!',
                          style: TextStyle(
                            color: lynchColor,
                            fontWeight: FontWeight.bold,
                          ),
                          onPressed: () async {
                            await model.navigateToSignInView();
                          },
                        ),
                      ],
                    ),
                    verticalSpaceSmall(context),
                    Text(
                      'Or',
                      style: TextStyle(
                        color: lynchColor,
                      ),
                    ),
                    verticalSpaceSmall(context),
                    LoginOrSignUpWithButton(
                      onPressed: () {},
                      socialMediaName: 'Facebook',
                      socialMediaColor: Color(0xff395A98),
                      socialMediaIcon: FontAwesomeIcons.facebookF,
                      isLogin: false,
                    ),
                    verticalSpaceSmall(context),
                    LoginOrSignUpWithButton(
                      onPressed: () {},
                      socialMediaName: 'Google',
                      socialMediaColor: Color(0xffE74236),
                      socialMediaIcon: FontAwesomeIcons.google,
                      isLogin: false,
                    ),
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
