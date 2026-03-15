# Reflection

## QR1
The most difficult concept for me was asynchronous programming using async and await. At first I was confused about why a function should return a Future instead of a normal value. When I experimented in DartPad and used await with Future.delayed(), I understood that async functions allow the program to perform operations that take time without stopping the entire program.

## QR2
If the program had to analyze a list of floating point numbers instead of integers, several parts of the code would need to change. The list type would change from List<int> to List<double>, and the return types of some functions like findMax, findMin, and calculateSum would also change to double. This shows that thinking carefully about data types during program design is important because types affect many parts of the code.

## QR3
In a real Flutter application, asynchronous operations are used when fetching data from a server or API. For example, a weather application might request weather data from an online API. The Future would return the weather information. While the data is loading, the UI might show a loading indicator until the Future completes.

## QR4
Using a single function that accepts the operation as a parameter could work, but having separate methods like add(), subtract(), multiply(), and divide() improves readability and organization. Each function has a clear responsibility and is easier to test and maintain. However, using one function might reduce code repetition. Both approaches have advantages depending on the design of the application.
