/* ## Program 2: Perform Mathematical Operations with Functions
Write a Dart program that performs two mathematical operations using functions.
 */

import 'dart:io';

void main() {
  print("Select two mathematical operations:");
  print("1. Addition");
  print("2. Multiplication");
  stdout.write("Enter operation 1 or 2: ");
  String? operationInput = stdin.readLineSync();

  //Validate the operation input
  if (operationInput != null &&
      (operationInput == '1' || operationInput == '2')) {
    //Convert the operation input to integer
    int operation = int.parse(operationInput);

    //Get the operation symbol based on the selected operation
    String operationSymbol = (operation == 1) ? '+' : '*';

    //Prompt the user to enter numbers
    stdout.write("Enter numbers separated by space: ");
    String? numbersInput = stdin.readLineSync();

    if (numbersInput != null) {
      // Split the input string into a list of numbers
      List<String> numbersAsString = numbersInput.split(' ');

      // Perform the selected operation on the numbers
      try {
        if (operation == 1) {
          double result = numbersAsString
              .map((num) => double.parse(num))
              .reduce((value, element) => value + element);
          print("Result of addition: $result");
        } else {
          double result = numbersAsString
              .map((num) => double.parse(num))
              .reduce((value, element) => value * element);
          print("Result of multiplication: $result");
        }
      } catch (e) {
        print("Invalid input. Please enter valid numbers separated by space.");
      }
    } else {
      print("Invalid input. Please enter valid numbers separated by space.");
    }
  } else {
    print("Invalid operation selection. Please enter 1 or 2.");
  }
}
