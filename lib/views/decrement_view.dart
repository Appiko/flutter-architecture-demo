import 'package:flutter/material.dart';
import 'package:flutter_architecture_demo/locators.dart';
import 'package:flutter_architecture_demo/services/counter_service.dart';
import 'package:flutter_architecture_demo/widgets/customer_counter_container.dart';
import 'package:provider/provider.dart';

class DecrementView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int _counterValue = Provider.of<CounterService>(context).counterValue;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomCounterContainer(
              counterValue: _counterValue,
            ),
            SizedBox(height: 32),
            Text(
              'You will be popped when you hit 3 and the state will be preserved',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: locator<CounterService>().decrementCounter,
        tooltip: 'Decrement',
        label: Text("Decrement"),
        icon: Icon(Icons.remove),
      ),
    );
  }
}
