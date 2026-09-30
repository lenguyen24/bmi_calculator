import 'package:flutter_test/flutter_test.dart';
import 'package:bmicalculater/calculater_brain.dart';

void main() {
  group('CalculatorBrain Tests', () {
    test('Normal BMI calculation', () {
      final calc = CalculatorBrain(height: 180, weight: 70);
      expect(calc.calculateBMI(), '21.6');
      expect(calc.getResult(), 'Normal');
    });

    test('Overweight BMI calculation', () {
      final calc = CalculatorBrain(height: 170, weight: 85);
      expect(calc.calculateBMI(), '29.4');
      expect(calc.getResult(), 'Overweight');
    });

    test('Underweight BMI calculation', () {
      final calc = CalculatorBrain(height: 180, weight: 50);
      expect(calc.calculateBMI(), '15.4');
      expect(calc.getResult(), 'Underweight');
    });
  });
}
