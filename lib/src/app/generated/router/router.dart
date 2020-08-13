import 'package:auto_route/auto_route_annotations.dart';
import 'package:chat_app_ui/src/ui/views/auth/forgot_password/forgot_password_view.dart';
import 'package:chat_app_ui/src/ui/views/auth/my_code/my_code_view.dart';
import 'package:chat_app_ui/src/ui/views/auth/my_mobile_number/my_mobile_number_view.dart';
import 'package:chat_app_ui/src/ui/views/auth/sign_in/sign_in_view.dart';
import 'package:chat_app_ui/src/ui/views/auth/sign_up/sign_up_view.dart';
import 'package:chat_app_ui/src/ui/views/startup/startup_view.dart';
import 'package:chat_app_ui/src/ui/views/home/home_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SignInView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: ForgotPasswordView),
    MaterialRoute(page: MyMobileNumberView),
    MaterialRoute(page: MyCodeView),
  ],
)
class $Router {}
