import 'package:flutter/material.dart';

import 'ui/activity/home/home_act.dart';
import 'ui/activity/splash_act.dart';
import 'ui/activity/welcome/welcome_act.dart';



class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String welcome = '/welcome';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashActivity(),
    home: (BuildContext context) => HomeActivity(),
    welcome: (BuildContext context) => WelcomeActivity(),
  };
}



