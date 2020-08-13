import 'package:chat_app_ui/src/ui/global/app_colors.dart';
import 'package:chat_app_ui/src/ui/global/ui_helpers.dart';
import 'package:chat_app_ui/src/ui/widgets/dumb/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import './my_mobile_number_view_model.dart';

class MyMobileNumberView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyMobileNumberViewModel>.reactive(
      viewModelBuilder: () => MyMobileNumberViewModel(),
      builder: (
        BuildContext context,
        MyMobileNumberViewModel model,
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
                          'My Mobile Number is',
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 80,
                              height: 59,
                              padding: EdgeInsets.all(
                                blockSize(context) * 1,
                              ),
                              color: Color(0xffE4E4E6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    '+966',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: blockSize(context) * 1.5,
                                    ),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.chevronDown,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF1F2F6),
                                border: InputBorder.none,
                                labelText: 'Mobile Number',
                                labelStyle: TextStyle(
                                  color: lynchColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceSmall(context),
                    Text(
                      model.mobileNumberText,
                      style: TextStyle(
                        fontSize: blockSize(context) * 1.5,
                        color: lynchColor,
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
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
