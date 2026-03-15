// Task 1: Number Analysis App
// Name: MUBAREK JEMAL

final numbers = <int>[34, -7, 89, 12, -45, 67, 3, 100, -2, 55];

// Function to find the maximum number in a list
int findMax(List<int> numbers) {
  int max = numbers[0];

  for (int n in numbers) {
    if (n > max) {
      max = n;
    }
  }

  return max;
}

// Function to find the minimum number in a list
int findMin(List<int> numbers) {
  int min = numbers[0];

  for (int n in numbers) {
    if (n < min) {
      min = n;
    }
  }

  return min;
}

// Function to calculate the sum of numbers
int calculateSum(List<int> numbers) {
  int sum = 0;

  for (int n in numbers) {
    sum += n;
  }

  return sum;
}

// Function to calculate average
double calculateAverage(List<int> numbers) {
  int sum = calculateSum(numbers);
  return sum / numbers.length;
}

// Function to count negative numbers
int countNegatives(List<int> numbers) {
  int count = 0;

  for (int n in numbers) {
    if (n < 0) {
      count++;
    }
  }

  return count;
}
void main() {

  int max = findMax(numbers);
  int min = findMin(numbers);
  int sum = calculateSum(numbers);
  double avg = calculateAverage(numbers);

  print('Number Analysis Results');
  print('========================');
  print('Numbers: $numbers');
  print('Maximum value : $max');
  print('Minimum value : $min');
  print('Sum           : $sum');
  print('Average       : $avg');
}


// ANSWER TO CONCEPTUAL QUESTIONS

/*
Q1. What is the difference between a List<int> and a List<dynamic> in Dart? 
Why is it usually better to use a typed list like List<int>?
ANSWER.
  List<int> stores only integers while List<dynamic> can store any type of value.
  Using List<int> is better because it provides type safety and prevents errors.

Q2. In your findMax() function, why is it important to initialize your 'running maximum' 
variable to the first element of the list rather than to 0 or to a very small number? 
What could go wrong with the other approaches?
ANSWER.
  Initializing the running maximum with the first element ensures that the value
  comes from the list itself. If we used 0 and the list contained only negative
  numbers, the result would be incorrect.

Q3. Your calculateAverage() function calls calculateSum() internally. 
What software design principle does this demonstrate, and why is reusing existing 
functions preferable to duplicating code?
ANSWER.
  This demonstrates code reuse and modular programming. Reusing existing
  functions avoids duplicating logic and makes the program easier to maintain.

Q4. Describe in plain English what the for-in loop syntax does in Dart. How is it different 
from a traditional for loop with an index? When would you prefer one over the other?
ANSWER.
  The for-in loop iterates directly over elements in a list. A traditional for loop
  uses an index to access elements. The for-in loop is simpler when you only need
  the values.

Q5. If someone calls your findMax() function with an empty list, what happens? 
How could you modify the function to handle that case safely?
ANSWER.
  If the list is empty, accessing numbers[0] will cause an error. We could add a
  check at the beginning of the function and throw an error or return a default
  value if the list is empty.
*/
