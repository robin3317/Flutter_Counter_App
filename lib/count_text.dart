import 'package:flutter/material.dart';

class CountText extends StatelessWidget {

  final int counter;
  CountText(this.counter);

  @override
  Widget build(BuildContext context) {
    return Text(
      'You press button $counter times',
      style: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        color: Colors.purple
      ),
    );
  }
}