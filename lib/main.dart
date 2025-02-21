import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:demo3/core/routing/app_routing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App(
    connectivity: Connectivity(),
    route: AppRouting(),
  ));
}

// ignore: must_be_immutable
class App extends StatelessWidget {
  App({super.key, required this.connectivity, required this.route});
  Connectivity connectivity;
  AppRouting route;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: route.onRouteGenerator,
    );
  }
}
