import 'package:demo3/presentation/screens/home_screen.dart';
import 'package:demo3/presentation/screens/error/page_404.dart';
import 'package:demo3/presentation/screens/user%20screens/notification_screen.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route onRouteGenerator(RouteSettings route) {
    switch (route.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case '/notification':
        return MaterialPageRoute(builder: (context) => NotificationScreen());

      default:
        return MaterialPageRoute(builder: (conext) => const Page404());
    }
  }
}
