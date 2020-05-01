import 'package:flutter_architecture_demo/services/counter_service.dart';
import 'package:flutter_architecture_demo/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;

/// needs to be called at in the main
void setupLocators() {
  locator.registerLazySingleton<CounterService>(() => CounterService());
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
}
