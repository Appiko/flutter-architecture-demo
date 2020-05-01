import 'package:flutter/material.dart';

class CustomCounterContainer extends StatelessWidget {
  final int counterValue;
  const CustomCounterContainer({Key key, this.counterValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.6,
      width: size.width * 0.6,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pinkAccent, Colors.purple],
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
        ),
        borderRadius: BorderRadius.circular(size.width * 0.6),
      ),
      child: Center(
        child: Text(
          '$counterValue',
          style: Theme.of(context).textTheme.display4.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
