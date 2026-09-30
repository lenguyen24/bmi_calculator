import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bmicalculater/main.dart';

void main() {
  testWidgets('BMI Calculator smoke test', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1080, 1920);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(const BMICalculator());
    expect(find.text('BMI CALCULATOR'), findsOneWidget);
  });
}
