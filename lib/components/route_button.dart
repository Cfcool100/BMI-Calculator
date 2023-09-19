import 'package:flutter/material.dart';

class RefactorButton extends StatelessWidget {
  const RefactorButton({
    super.key,
    required this.onClick,
    required this.text,
  });

  final GestureTapCallback onClick;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pinkAccent, borderRadius: BorderRadius.circular(8.0)),
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      width: double.infinity,
      height: 70.0,
      child: TextButton(
        onPressed: onClick,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
