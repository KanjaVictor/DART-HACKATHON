/* 
Program 1: Display Personal Information
Write a Dart program using variables to display your name, age, school, and a hobby. Print it in one logical sentence.
*/
import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your age: ");
  int? age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your school: ");
  String? school = stdin.readLineSync();

  stdout.write("Enter your hobby: ");
  String? hobby = stdin.readLineSync();

  print(
      "Hello, $name! That's great to know that you are $age years old and you go to $school. I hope you enjoy $hobby.");
}
