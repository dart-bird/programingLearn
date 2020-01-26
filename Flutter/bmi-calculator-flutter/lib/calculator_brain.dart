import 'dart:math';

class CalculatorBarin {
  CalculatorBarin({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return '과체중';
    else if (_bmi > 18.5)
      return '정상';
    else
      return '저체중';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return '과체중 이군요! 다이어트 합시다~';
    else if (_bmi > 18.5)
      return '정상 이네요! 이상태로 쭉 유지하세요.';
    else
      return '저체중 이시네요 ㅠ.ㅡ 좀 드세요 ... ';
  }
}
