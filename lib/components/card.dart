import 'package:flutter/material.dart';

class CardRefactor extends StatelessWidget {
  CardRefactor({
    required this.color,
    this.child,
  });

  final Color color;
  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      margin: EdgeInsets.all(15.0),
      child: child,
    );
  }
}
