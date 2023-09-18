import 'package:flutter/material.dart';

class CardRefactor extends StatelessWidget {
  CardRefactor({
    required this.customColor,
    this.child,
  });

  final Color customColor;
  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: customColor,
      ),
      margin: EdgeInsets.all(15.0),
      child: child,
    );
  }
}
