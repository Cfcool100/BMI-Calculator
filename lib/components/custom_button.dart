import 'package:bmi_calculator/components/constant_variable.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: kCustomBackgroundColor,
      child: Icon(icon),
    );
  }
}
