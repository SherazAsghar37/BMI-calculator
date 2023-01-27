import 'dart:math';

class BMICalculation {
  BMICalculation(
      {required this.age, required this.height, required this.weight});
  final int height;
  final int weight;
  final int age;
  double cal = 0;

  String calculation() {
    cal = weight / pow(height / 100, 2);
    return cal.toStringAsFixed(1);
  }

  String getResult() {
    if (cal >= 25) {
      return "Overweight";
    } else if (cal > 18.5 && cal < 27) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String advice() {
    if (cal >= 25) {
      return "OMG! Your bodyweight is higher than normal, you should exercise more";
    } else if (cal > 18.5) {
      return "Good Job! you have a normal body weight, keep it up and do exercise regularly";
    } else {
      return "Oh Shit! your body weight is less than normal, you have to eat more and healty";
    }
  }
}
