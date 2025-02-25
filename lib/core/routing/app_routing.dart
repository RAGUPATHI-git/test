
import 'package:demo3/features/auth/presentation/pages/login_screen.dart';
import 'package:demo3/features/auth/presentation/pages/signup_screen.dart';
import 'package:demo3/features/names/presentation/pages/names_page.dart';
import 'package:demo3/features/names/presentation/pages/numbers_page.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route onRouteGenerator(RouteSettings route) {
    switch (route.name) {
      case '/':
        return MaterialPageRoute(builder: (context) =>  NamesPage());

      case '/signup_screen':
      return MaterialPageRoute(builder: (context) => const  SignupScreen());

      case '/numbers_page':
      return MaterialPageRoute(builder: (context)=>  NumbersPage());


      default:
        return MaterialPageRoute(builder: (conext) => const LoginScreen());
    }
  }
}
