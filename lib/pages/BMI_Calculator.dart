import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/card.dart';
import '../components/gender_card.dart';

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
  Color primaryBackgroundColor = Color(0XFF1D1E33);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardRefactor(
                    primaryBackgroundColor,
                    child: GenderCard(
                      onPressed: () {
                        setState(() {});
                      },
                      gender: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: CardRefactor(
                    primaryBackgroundColor,
                    child: GenderCard(
                      onPressed: () {
                        setState(() {});
                      },
                      gender: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardRefactor(primaryBackgroundColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardRefactor(primaryBackgroundColor),
                ),
                Expanded(
                  child: CardRefactor(primaryBackgroundColor),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(8.0)),
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            width: double.infinity,
            height: 70.0,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
