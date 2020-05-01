import 'package:flutter/material.dart';
import 'package:flutter_architecture_demo/constants.dart';
import 'package:flutter_architecture_demo/views/decrement_view.dart';
import 'package:flutter_architecture_demo/views/homepage_view.dart';

// Handles the route generation
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case rootViewRoute:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => MyHomePage(),
      );
      break;
    case decrementViewRoute:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => DecrementView(),
      );
      break;
  }
  // Preferably change to a default unknown route view
  return null;
}
