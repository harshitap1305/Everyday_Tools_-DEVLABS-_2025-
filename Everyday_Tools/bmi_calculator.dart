import 'dart:io';

void runBMICalculator() {
  print('\nBMI Calculator');
  stdout.write('Enter weight (kg): ');
  double weight = double.parse(stdin.readLineSync()!);
  stdout.write('Enter height (m): ');
  double height = double.parse(stdin.readLineSync()!);

  double bmi = weight / (height * height);
  String category =
      bmi < 18.5 ? 'Underweight' : bmi < 24.9 ? 'Normal' : bmi < 29.9 ? 'Overweight' : 'Obese';

  print('Your BMI is ${bmi.toStringAsFixed(2)} ($category)');
}