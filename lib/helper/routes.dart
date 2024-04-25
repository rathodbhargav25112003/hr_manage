
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_manage/screen/dashboard_screen.dart';
import 'package:hr_manage/screen/forget_password_screen.dart';

import '../screen/login_screen.dart';

class Routes{
  static const String main_screen = "main_screen";
  static const String login = "login";
  static const String forget_password = "forget_password";
  static const String visitors_details_screen = "visitors_details_screen";
  static const String exibitors_details_screen = "exibitors_details_screen";
  static const String scanner_screen = "scanner_screen";

  static Route<dynamic> onGenerateRouted(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case main_screen:
        {
          return DashboardScreen.route(routeSettings);
        }
      case login:
        {
          return LoginScreen.route(routeSettings);
        }
      case forget_password:
        {
          return ForgetPassordScreen.route(routeSettings);
        }
      default:
        {
          return CupertinoPageRoute(builder: (context) => const Scaffold());
        }
    }
  }
}