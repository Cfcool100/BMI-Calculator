import 'dart:math';

class CalculatorBrain {
  final double _height;
  final int _weight;

  CalculatorBrain(this._height, this._weight);

  double? _result;

  String calculateBMI() {
    _result = _weight / pow(_height / 100, 2);

    return _result!.toStringAsFixed(1);
  }

  String getResult() {
    if (_result! >= 25 && _result! <= 35) {
      return 'OVERWEIGHT';
    } else if (_result! > 18 && _result! <= 24) {
      return 'NORMAL';
    } else if (_result! < 18) {
      return 'SKINNY';
    } else {
      return 'OBESE';
    }
  }

  String getResultInterpretation() {
    if (_result! > 24 && _result! < 35) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_result! >= 18 && _result! <= 24) {
      return 'You have a normal body weight. Good job!';
    } else if (_result! < 18) {
      return 'You have a lower than normal body weight. You can eat a bit more';
    } else {
      return 'Eat a balanced diet that includes a variety of nutritious foods such as fruits, vegetables, whole grains, lean proteins and low-fat dairy products. Avoid foods high in empty calories, saturated fat and added sugar.';
    }
  }
}
