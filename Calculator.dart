import 'dart:io';

void main() {
  while (true) {
  //User input
  print('\n--- BasicDartProgramAct3 ---\n');
  
  stdout.write('Enter first number: ');
  double numA = double.parse(stdin.readLineSync()!);
  
  stdout.write('Choose one operators (+, -, *, or /): ');
  String? operators = stdin.readLineSync();
  
  stdout.write('Enter second number: ');
  double numB = double.parse(stdin.readLineSync()!);

  double Result = calculate(numA, numB, operators!);
  print('Result: $Result');
    break;
  }
}

//calculate the user's input
double calculate(double num1, double num2, String operators) {
  switch (operators) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 != 0) {
        return num1 / num2;
      } else {
        print('Error: ZeroDivisionError.');
        return double.nan;
      }
    default:
      print('Invalid operation. Please choose +, -, *, or /.');
      return double.nan;
  }
}
