
import 'package:demo3/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route onRouteGenerator(RouteSettings route) {
    switch (route.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const LoginScreen());


      default:
        return MaterialPageRoute(builder: (conext) => const LoginScreen());
    }
  }
}
