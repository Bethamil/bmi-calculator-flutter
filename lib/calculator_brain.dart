import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age});
  final int height;
  final int weight;
  final int age;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25 && age > 18 && age < 70) {
      return 'Overgewicht';
    } else if (_bmi >= 28 && age >= 70) {
      return 'Overgewicht';
    } else if (_bmi >= 18.5 && age < 70) {
      return 'Normaal ';
    } else if (_bmi >= 22 && age >= 70) {
      return 'Normaal';
    } else {
      return 'Ondergewicht';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25 && age > 18 && age < 70) {
      return 'Je bent te zwaar. Ga sporten!';
    } else if (_bmi >= 28 && age >= 70) {
      return 'Je bent te zwaar. Ga sporten!';
    } else if (_bmi >= 18.5 && age < 70) {
      return 'Je hebt een normaal gewicht. Goedzo! ';
    } else if (_bmi >= 22 && age >= 70) {
      return 'Je hebt een normaal gewicht. Goedzo! ';
    } else {
      return 'Je gewicht is te laag. Ga meer eten!';
    }
  }
}
