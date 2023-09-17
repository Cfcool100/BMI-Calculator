import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard(
      {required this.gender, required this.label, required this.onPressed});

  final IconData gender;
  final String label;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            gender,
            size: 80,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 20.0, color: Colors.white38),
          ),
        ],
      ),
    );
  }
}
