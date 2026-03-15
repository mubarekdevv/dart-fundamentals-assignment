// Task 2: Async Calculator App
// Name: Mubarek Jemal

import 'dart:async';

// Calculator class
class Calculator {
  final String name;

  // Constructor
  Calculator(this.name);

  // Addition
  double add(double a, double b) {
    return a + b;
  }

  // Subtraction
  double subtract(double a, double b) {
    return a - b;
  }

  // Multiplication
  double multiply(double a, double b) {
    return a * b;
  }

  // Division with error handling
  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero.');
    }

    return a / b;
  }

  // Async computation with delay
  Future<double> computeAsync(double a, double b, String op) async {
    double result;

    switch (op) {
      case 'add':
        result = add(a, b);
        break;

      case 'subtract':
        result = subtract(a, b);
        break;

      case 'multiply':
        result = multiply(a, b);
        break;

      case 'divide':
        result = divide(a, b);
        break;

      default:
        throw ArgumentError('Unknown operation: $op');
    }

    // simulate delay
    await Future.delayed(Duration(seconds: 1, milliseconds: 500));

    return result;
  }

  // Display result method
  Future<void> displayResult(double a, double b, String op) async {
    try {
      final result = await computeAsync(a, b, op);
      print('$op($a, $b) = $result');
    } catch (e) {
      print('Error: $e');
    }
  }
}

Future<void> main() async {
  final calc = Calculator('MyCalculator');

  print('--- ${calc.name} ---');

  await calc.displayResult(10, 4, 'add');
  await calc.displayResult(10, 4, 'subtract');
  await calc.displayResult(10, 4, 'multiply');
  await calc.displayResult(10, 4, 'divide');
  await calc.displayResult(15, 3, 'divide');
  await calc.displayResult(10, 0, 'divide'); // error test

  print('All calculations complete.');
}

// ANSWER TO CONCEPTUAL QUESTIONS

/*
Q6. What is the difference between a synchronous function and an asynchronous 
function in Dart? In your Calculator class, why is divide() synchronous while 
computeAsync() is asynchronous?
ANSWER.
  A synchronous function runs immediately and returns a result directly.
  An asynchronous function may take time to complete and returns a Future.
  In this program divide() is synchronous because it performs a simple
  calculation instantly. computeAsync() is asynchronous because it
  simulates a delay using Future.delayed().

Q7. Explain the purpose of the await keyword in Dart. What happens if you forget 
to use await when calling an async function that returns a Future? What does your 
program print instead of the result?
ANSWER.
  The await keyword pauses execution until the Future completes.
  If we forget to use await, the program will print a Future object
  instead of the actual result.

Q8. What is the purpose of the try-catch block in your displayResult() method? What 
would happen if you removed it and then called displayResult(10, 0, 'divide')?
ANSWER.
  The try-catch block prevents the program from crashing if an error
  occurs. If divide by zero happens, the exception is caught and an
  error message is printed instead of terminating the program.

Q9. Why is it good design to have divide() throw an ArgumentError rather than simply 
returning 0 or printing an error inside the divide() method itself? What principle of 
function design does this reflect?
ANSWER.
  Throwing an ArgumentError is good design because it informs the caller
  that the input is invalid. It separates error handling from the
  calculation logic and keeps the function clean and reusable.

Q10. What does the async keyword on main() allow you to do? Could this assignment have been 
written without making main() async? Explain your answer.
ANSWER.
  The async keyword on main() allows us to use await inside main.
  Without async, we would not be able to wait for asynchronous
  operations like displayResult().
*/
