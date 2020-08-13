import 'package:chat_app_ui/src/app/generated/router/router.gr.dart';
import 'package:chat_app_ui/src/ui/global/custom_base_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class SignInViewModel extends CustomBaseViewModel {
  final NavigationService _navigationService = NavigationService();

  bool _showPassword = false;
  bool get showPassword => _showPassword;
  void setShowPassword(bool newValue) {
    _showPassword = newValue;
    notifyListeners();
  }

  Future<void> navigateToSignUpView() async {
    await _navigationService.pushNamedAndRemoveUntil(Routes.signUpView);
  }
}
