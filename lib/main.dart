import 'package:flutter/material.dart';
import 'package:flutter_architecture_demo/constants.dart';
import 'package:flutter_architecture_demo/helpers/router.dart';
import 'package:flutter_architecture_demo/locators.dart';
import 'package:flutter_architecture_demo/services/counter_service.dart';
import 'package:flutter_architecture_demo/services/navigation_service.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocators();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterService>(
          create: (_) => locator<CounterService>(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: generateRoute,
      initialRoute: rootViewRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
