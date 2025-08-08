import 'dart:io';

void main() {
  while (true) {
    print('\n=== Simple Calculator ===');
    print('1. Addition (+)');
    print('2. Subtraction (-)');
    print('3. Multiplication (*)');
    print('4. Division (/)');
    print('5. Exit');
    stdout.write('Choose an operation (1-5): ');
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Exiting the calculator. Goodbye!');
      break;
    }

    stdout.write('Enter first number: ');
    double? num1 = double.tryParse(stdin.readLineSync()!);

    stdout.write('Enter second number: ');
    double? num2 = double.tryParse(stdin.readLineSync()!);

    if (num1 == null || num2 == null) {
      print('Invalid input. Please enter valid numbers.');
      continue;
    }

    switch (choice) {
      case '1':
        print('Result: ${num1 + num2}');
        break;
      case '2':
        print('Result: ${num1 - num2}');
        break;
      case '3':
        print('Result: ${num1 * num2}');
        break;
      case '4':
        if (num2 == 0) {
          print('Error: Division by zero is not allowed.');
        } else {
          print('Result: ${num1 / num2}');
        }
        break;
      default:
        print('Invalid choice. Please select a valid operation.');
    }
  }
}
