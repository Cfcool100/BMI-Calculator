import 'package:bmi_calculator/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/card.dart';
import '../components/gender_card.dart';

const kValueStyle = TextStyle(
  fontSize: 45.0,
  fontWeight: FontWeight.w900,
);

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

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  Color primaryBackgroundColor = Color(0XFF1D1E33);
  Color secondBackgroundColor = Color(0XFF1D1E23);
  Gender? gender;
  double height = 125.0;
  int weight = 55;
  int age = 1;

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
                    customColor: gender == Gender.male
                        ? secondBackgroundColor
                        : primaryBackgroundColor,
                    child: GenderCard(
                      onPressed: () {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                      gender: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: CardRefactor(
                    customColor: gender == Gender.female
                        ? secondBackgroundColor
                        : primaryBackgroundColor,
                    child: GenderCard(
                      onPressed: () {
                        setState(() {
                          gender = Gender.female;
                        });
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
            child: CardRefactor(
              customColor: primaryBackgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                      text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: height.round().toString(),
                        style: kValueStyle,
                      ),
                      TextSpan(
                        text: 'cm',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )),
                  Slider(
                    activeColor: Color(0xffffffff),
                    overlayColor: MaterialStatePropertyAll(Color(0x39eb1555)),
                    thumbColor: Color(0xffeb1555),
                    inactiveColor: Color(0xff8d8e98),
                    value: height,
                    max: 225.0,
                    min: 100.0,
                    divisions: 125,
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardRefactor(
                    customColor: primaryBackgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kTextStyle,
                        ),
                        Text(
                          '$weight',
                          style: kValueStyle,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                            CustomButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CardRefactor(
                    customColor: primaryBackgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: kTextStyle,
                        ),
                        Text(
                          '$age',
                          style: kValueStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                            CustomButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
