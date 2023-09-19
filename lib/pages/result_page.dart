import 'package:bmi_calculator/components/card.dart';
import 'package:bmi_calculator/components/route_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.result,
      required this.resultMessage,
      required this.interpretation});

  final result;
  final resultMessage;
  final interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: CardRefactor(
                customColor: Color(0XFF1D1E33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultMessage,
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w700),
                    ),
                    // SizedBox(width: double.infinity, height: 20.0),
                    Text(
                      '$result',
                      style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        interpretation,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RefactorButton(
              onClick: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
