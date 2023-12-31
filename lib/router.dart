import 'package:flutter/material.dart';
import 'package:next_life/screens/account.dart';
import 'package:next_life/screens/change_appearance.dart';
import 'package:next_life/screens/change_password.dart';
import 'package:next_life/screens/default.dart';
import 'package:next_life/screens/dob.dart';
import 'package:next_life/screens/error.dart';
import 'package:next_life/screens/gender.dart';
import 'package:next_life/screens/help_and_support.dart';
import 'package:next_life/screens/home.dart';
import 'package:next_life/screens/my-life/components/living-situation/sub-pages/housing.dart';
import 'package:next_life/screens/pathfinder_report.dart';
import 'package:next_life/screens/my-life/page.dart';
import 'package:next_life/screens/settings.dart';
import 'package:next_life/screens/test.dart';
import 'package:next_life/screens/username.dart';

import 'layouts/home.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // ! this is a temporary route
      // TODO: replace with /home
      case "/":
        return _generateRoute(const DefaultScreen(), useHomeLayout: false);
      // ! this is a temporary route
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
      case "/help-and-support":
        return _generateRoute(const HelpAndSupportPage());
      case "/dob":
        return _generateRoute(const DOBPage());
      case "/username":
        return _generateRoute(const UsernamePage());
      case "/gender":
        return _generateRoute(const GenderPage());
      case "/change-password":
        return _generateRoute(const ChangePasswordPage());
      case "/pathfinder-report":
        return _generateRoute(PathFinderReport());
      case "/my-life":
        return _generateRoute(MyLife());
      default:
        return _generateRoute(const ErrorPage(message: "404 Not Found"));
    }
  }

  static Route<Widget> _generateRoute(Widget screen, {useHomeLayout = true}) {
    if (useHomeLayout) {
      screen = HomeLayout(child: screen);
    }
    return MaterialPageRoute(
      builder: (_) => SafeArea(child: screen),
    );
  }
}
