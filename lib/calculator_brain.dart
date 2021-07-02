import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final double height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Kegemukan';
    }
    else if (_bmi > 18) {
      return 'Normal';
    }
    else {
      return 'Berat badan kurang';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'Anda memiliki berat badan normal yang lebih tinggi. Cobalah untuk lebih banyak berolahraga';
    }
    else if (_bmi > 18) {
      return 'Kamu memiliki badan yang normal. Bagus!';
    }
    else {
      return 'Anda memiliki berat badan yang lebih rendah dari biasanya. Anda bisa makan sedikit lebih banyak!';
    }
  }
}