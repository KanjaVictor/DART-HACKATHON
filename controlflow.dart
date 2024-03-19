/* 
## Program 3: Determine Grade Based on Marks
Write a Dart program to determine the grade based on a student's marks. The program should print out the appropriate grade according to the following criteria:
- If the marks are greater than 85, print "Excellent".
- If the marks are between 75 and 85 (inclusive), print "Very Good".
- If the marks are between 65 and 75 (inclusive), print "Good".
- If the marks are below 65, print "Average".
 */

import 'dart:io';

void main() {
  // Prompt the user to enter marks
  stdout.write("Enter the student's marks: ");
  String? marksInput = stdin.readLineSync();

  // Check if input is provided
  if (marksInput != null) {
    try {
      // Parse marks input to double
      double marks = double.parse(marksInput);

      // Determine grade based on marks
      String grade = determineGrade(marks);

      // Print the grade
      print("Grade: $grade");
    } catch (e) {
      print("Invalid input. Please enter a valid number.");
    }
  } else {
    print("No input provided.");
  }
}

// Function to determine grade based on marks
String determineGrade(double marks) {
  if (marks > 85) {
    return "Excellent";
  } else if (marks >= 75 && marks <= 85) {
    return "Very Good";
  } else if (marks >= 65 && marks < 75) {
    return "Good";
  } else {
    return "Average";
  }
}
