import 'dart:async';

import 'package:chat_app_ui/src/app/generated/locator/locator.dart';
import 'package:chat_app_ui/src/app/generated/router/router.gr.dart';
import 'package:chat_app_ui/src/ui/global/custom_base_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends CustomBaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  Future handleStartup() async {
    Timer(
      Duration(
        seconds: 3,
      ),
      () => navigateToHomeView(),
    );
  }

  Future navigateToHomeView() async {
    await _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
  }
}
