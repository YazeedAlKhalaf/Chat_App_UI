import 'package:auto_route/auto_route_annotations.dart';
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
  ],
)
class $Router {}
