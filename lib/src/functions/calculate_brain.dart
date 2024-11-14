import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  late double _bmi;

  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return 'YOU HAVE A HIGHER THAN NORMAL BODY WEIGHT, TRY TO EXERCISE MORE.:(';
    } else if (_bmi > 18.5) {
      return 'YOU HAVE A NORMAL BODY WEIGHT, GOOD JOB!';
    } else {
      return 'YOU HAVE A LOWER THAN NORMAL BODY WEIGHT, YOU CAN EAT MORE:).';
    }
  }
}
