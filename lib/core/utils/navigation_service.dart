import 'package:flutter/material.dart';

abstract class NavigationService {
  Future<void> navigateTo(String routeName, {Object? arguments});
  void goBack();
}

class NavigationServiceImpl implements NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Future<void> navigateTo(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  @override
  void goBack() {
    navigatorKey.currentState!.pop();
  }
}
