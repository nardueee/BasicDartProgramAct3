import 'dart:io';

void main() {
  calculator();
}

void calculator() {
  try {
    stdout.write("Enter the first number: ");
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter the second number: ");
    double num2 = double.parse(stdin.readLineSync()!);

    double sum = num1 + num2;
    double difference = num1 - num2;
    double product = num1 * num2;

    String quotient;
    if (num2 != 0) {
      quotient = (num1 / num2).toStringAsFixed(2);
    } else {
      quotient = "Error (cannot divide by zero)";
    }


    print("\n--- Results ---");
    print("$num1 + $num2 = $sum");
    print("$num1 - $num2 = $difference");
    print("$num1 * $num2 = $product");
    print("$num1 / $num2 = $quotient");

  } catch (e) {
    print("Invalid input. Please enter valid numbers.");
  }
}