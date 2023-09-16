import 'package:bmi_calculator/components/card.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardRefactor(),
                ),
                Expanded(
                  child: CardRefactor(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0XFF1D1E33),
              ),
              margin: EdgeInsets.all(15.0),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardRefactor(),
                ),
                Expanded(
                  child: CardRefactor(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
