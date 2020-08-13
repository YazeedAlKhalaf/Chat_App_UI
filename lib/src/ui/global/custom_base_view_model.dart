import 'package:chat_app_ui/src/app/generated/locator/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

abstract class CustomBaseViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void popCurrentContext() {
    _navigationService.popRepeated(1);
  }
}
