import 'dart:io';

void runUnitConverter() {
  print('\n Unit Converter');
  print('1. Kilometers ↔ Miles');
  print('2. Celsius ↔ Fahrenheit');
  print('3. Kilograms ↔ Pounds');
  stdout.write('Choose a conversion type: ');
  String? type = stdin.readLineSync();

  switch (type) {
    case '1':
      stdout.write('Enter value: ');
      double value = double.parse(stdin.readLineSync()!);
      print('1. km → mi  2. mi → km');
      String? dir = stdin.readLineSync();
      if(dir!='1'||dir!='2')
      {
        print('Invalid choice');
        return; 
      }
      double result = dir == '1' ? value * 0.621371 : value / 0.621371;
      print('Result: ${result.toStringAsFixed(2)}');
      break;

    case '2':
      stdout.write('Enter value: ');
      double value = double.parse(stdin.readLineSync()!);
      print('1. °C → °F  2. °F → °C');
      String? dir = stdin.readLineSync();
      if(dir!='1'||dir!='2')
      {
        print('Invalid choice');
        return; 
      }
      double result = dir == '1' ? (value * 9 / 5) + 32 : (value - 32) * 5 / 9;
      print('Result: ${result.toStringAsFixed(2)}');
      break;

    case '3':
      stdout.write('Enter value: ');
      double value = double.parse(stdin.readLineSync()!);
      print('1. kg → lb  2. lb → kg');
      String? dir = stdin.readLineSync();
      if(dir!='1'||dir!='2')
      {
        print('Invalid choice');
        return; 
      }
      double result = dir == '1' ? value * 2.20462 : value / 2.20462;
      print('Result: ${result.toStringAsFixed(2)}');
      break;
    default:
      print('Invalid choice');
  }
}