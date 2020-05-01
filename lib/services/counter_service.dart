import 'package:flutter/foundation.dart';
import 'package:flutter_architecture_demo/constants.dart';
import 'package:flutter_architecture_demo/locators.dart';
import 'package:flutter_architecture_demo/models/counter.dart';
import 'package:flutter_architecture_demo/services/navigation_service.dart';

class CounterService with ChangeNotifier {
  Counter _counter = Counter(0);

  int _maxValue = 3;
  int _minValue = 7;

  int get counterValue => _counter.value;

  void incrementCounter() {
    _counter.value++;
    // navigate to decrement if counter values is 7
    if (_counter.value == _minValue) {
      locator<NavigationService>().push(decrementViewRoute);
    }
    // NotifyListeners will tell Provider that there is a change in state.
    notifyListeners();
  }

  void decrementCounter() {
    _counter.value--;
    // pop decrement if counter values goes down to 3
    if (counterValue == _maxValue) {
      locator<NavigationService>().pop();
    }
    notifyListeners();
  }
}
