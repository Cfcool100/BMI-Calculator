import 'package:flutter/material.dart';

class CardRefactor extends StatelessWidget {
  const CardRefactor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0XFF1D1E33),
      ),
      margin: EdgeInsets.all(15.0),
      // child: Icon(
      //   Icons.female,
      //   size: 100.0,
      // ),
    );
  }
}
