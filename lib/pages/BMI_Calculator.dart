import 'package:bmi_calculator/components/calculator.dart';
import 'package:bmi_calculator/components/custom_button.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/card.dart';
import '../components/gender_card.dart';
import '../components/route_button.dart';
import '../components/constant_variable.dart';

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

enum Gender { male, female }

Gender? gender;
double _height = 125.0;
int weight = 55;
int age = 1;

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
                  child: CardRefactor(
                    customColor: gender == Gender.male
                        ? kSecondBackgroundColor
                        : kPrimaryBackgroundColor,
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
                        ? kSecondBackgroundColor
                        : kPrimaryBackgroundColor,
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
              customColor: kPrimaryBackgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kTextStyle),
                  SizedBox(height: 10.0),
                  RichText(
                      text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: _height.round().toString(), style: kValueStyle),
                      TextSpan(
                        text: 'cm',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
                  Slider(
                    activeColor: kSliderActiveColor,
                    overlayColor: MaterialStatePropertyAll(kSliderOverlayColor),
                    thumbColor: kSliderThumbColor,
                    inactiveColor: kSliderInactiveColor,
                    value: _height,
                    max: 225.0,
                    min: 100.0,
                    divisions: 125,
                    onChanged: (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardRefactor(
                    customColor: kPrimaryBackgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: kTextStyle),
                        Text('$weight', style: kValueStyle),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            CustomButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CardRefactor(
                    customColor: kPrimaryBackgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age', style: kTextStyle),
                        Text('$age', style: kValueStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            CustomButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
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
          RefactorButton(
            onClick: () {
              CalculatorBrain calculate = CalculatorBrain(_height, weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    result: calculate.calculateBMI(),
                    resultMessage: calculate.getResult(),
                    interpretation: calculate.getResultInterpretation(),
                  ),
                ),
              );
            },
            text: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
