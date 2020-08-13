import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:chat_app_ui/src/ui/global/ui_helpers.dart';
import 'package:chat_app_ui/src/ui/global/app_colors.dart';
import 'package:chat_app_ui/src/ui/views/startup/startup_view_model.dart';

class StartupView extends StatefulWidget {
  @override
  _StartupViewState createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      viewModelBuilder: () => StartupViewModel(),
      onModelReady: (StartupViewModel model) => model.handleStartup(),
      builder: (
        BuildContext context,
        StartupViewModel model,
        Widget child,
      ) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/icons/logo.png',
                  width: blockSizeHorizontal(context) * 20,
                ),
                SizedBox(
                  height: blockSizeHorizontal(context) * 5,
                ),
                Text(
                  'Chat with your friends everywhere in the world',
                  style: TextStyle(
                    fontSize: blockSizeVertical(context) * 1.8,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: blockSizeHorizontal(context) * 10,
                ),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(primaryColor),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
