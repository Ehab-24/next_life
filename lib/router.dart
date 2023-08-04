import 'package:flutter/material.dart';
import 'package:next_life/screens/account.dart';
import 'package:next_life/screens/change_appearance.dart';
import 'package:next_life/screens/default.dart';
import 'package:next_life/screens/error.dart';
import 'package:next_life/screens/home.dart';
import 'package:next_life/screens/settings.dart';
import 'package:next_life/screens/test.dart';

import 'layouts/home.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _generateRoute(const DefaultScreen(), useHomeLayout: false);
      case "/test":
        return _generateRoute(const TestPage());
      case "/home":
        return _generateRoute(HomePage());
      case "/settings":
        return _generateRoute(const SettingsPage());
      case "/account":
        return _generateRoute(const AccountPage());
      case "/change-appearance":
        return _generateRoute(const ChangeAppearancePage());
      default:
        return _generateRoute(const ErrorPage(message: "404 Not Found"));
    }
  }

  static Route<Widget> _generateRoute(Widget screen, {useHomeLayout = true}) {
    if (useHomeLayout) {
      return MaterialPageRoute(builder: (_) => HomeLayout(child: screen));
    }
    return MaterialPageRoute(builder: (_) => screen);
  }
}
