import 'dart:io';

void runCalculator() {
  print('\nCalculator');
  stdout.write('Enter first number: ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Enter second number: ');
  double b = double.parse(stdin.readLineSync()!);
  stdout.write('Enter operator (+, -, *, /): ');
  String? op = stdin.readLineSync();

  double result;
  switch (op) {
    case '+':
      result = a + b;
      break;
    case '-':
      result = a - b;
      break;
    case '*':
      result = a * b;
      break;
    case '/':
      result = b == 0 ? double.nan : a / b;
      break;
    default:
      print('Invalid operator');
      return;
  }
  print('Result: ${result.toStringAsFixed(2)}');
}