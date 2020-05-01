import 'package:flutter/material.dart';

/// Handle UI navigation,
/// helps in handling navigation without the `context`
/// which navigation access to other services
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// Navigator.push
  Future<dynamic> push(
    /// Route name
    String routeName, {

    /// arguments to be sent to router
    dynamic arguments,
  }) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  /// Navigator.pop
  bool pop() {
    return navigatorKey.currentState.pop();
  }

  /// Navigator.popUntil a particular route name
  /// if the route is not found in the navigation stack,
  /// the UI will pop until the last page on the screen
  void popUntil(String routeName) {
    return navigatorKey.currentState.popUntil((r) {
      print(r.settings.name);
      if (r.isFirst || r.settings.name == routeName) {
        return true;
      }
      return false;
    });
  }
}
