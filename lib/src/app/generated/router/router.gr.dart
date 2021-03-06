// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../ui/views/auth/forgot_password/forgot_password_view.dart';
import '../../../ui/views/auth/my_code/my_code_view.dart';
import '../../../ui/views/auth/my_mobile_number/my_mobile_number_view.dart';
import '../../../ui/views/auth/sign_in/sign_in_view.dart';
import '../../../ui/views/auth/sign_up/sign_up_view.dart';
import '../../../ui/views/home/home_view.dart';
import '../../../ui/views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String signInView = '/sign-in-view';
  static const String signUpView = '/sign-up-view';
  static const String forgotPasswordView = '/forgot-password-view';
  static const String myMobileNumberView = '/my-mobile-number-view';
  static const String myCodeView = '/my-code-view';
  static const all = <String>{
    startupView,
    homeView,
    signInView,
    signUpView,
    forgotPasswordView,
    myMobileNumberView,
    myCodeView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.signInView, page: SignInView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.forgotPasswordView, page: ForgotPasswordView),
    RouteDef(Routes.myMobileNumberView, page: MyMobileNumberView),
    RouteDef(Routes.myCodeView, page: MyCodeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    SignInView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpView(),
        settings: data,
      );
    },
    ForgotPasswordView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordView(),
        settings: data,
      );
    },
    MyMobileNumberView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyMobileNumberView(),
        settings: data,
      );
    },
    MyCodeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyCodeView(),
        settings: data,
      );
    },
  };
}
