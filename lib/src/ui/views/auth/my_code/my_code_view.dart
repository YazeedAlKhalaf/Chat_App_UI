import 'package:chat_app_ui/src/ui/global/app_colors.dart';
import 'package:chat_app_ui/src/ui/global/ui_helpers.dart';
import 'package:chat_app_ui/src/ui/views/auth/my_code/widgets/one_number_text_field.dart';
import 'package:chat_app_ui/src/ui/widgets/dumb/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import './my_code_view_model.dart';

class MyCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyCodeViewModel>.reactive(
      viewModelBuilder: () => MyCodeViewModel(),
      builder: (
        BuildContext context,
        MyCodeViewModel model,
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
                          'My Code is',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OneNumberTextField(),
                        OneNumberTextField(),
                        OneNumberTextField(),
                        OneNumberTextField(),
                      ],
                    ),
                    verticalSpaceSmall(context),
                    Text(
                      model.codeText,
                      style: TextStyle(
                        fontSize: blockSize(context) * 1.5,
                        color: lynchColor,
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    verticalSpaceMedium(context),
                    Row(
                      children: [
                        RaisedButton(
                          onPressed: () {},
                          color: Color(0xffF3F3F3),
                          child: Text(
                            'Didn\'t receive SMS?',
                            style: TextStyle(
                              color: lynchColor,
                            ),
                          ),
                        ),
                      ],
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
