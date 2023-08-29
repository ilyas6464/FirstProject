//  **  # Task Set 6 **
// 10. Create a Array of 10 Integers
Integer[] numbers = new List<Integer>{ 33, 21, 55, 35, 24, 44, 35, 55, 25, 10 };
//   - print 'ideal numbers' if it contains both 10 and 5
//   - print 'Good numbers' if it contains 10
//   - print 'Ok numbers' if it contains 5
//   - print 'Not so Good numbers' if it does not contain 10 and 5

if (numbers.contains(10) && numbers.contains(5)) {
  System.debug('ideal numbers');
} else if (numbers.contains(10)) {
  System.debug('Good numbers');
} else if (numbers.contains(5)) {
  System.debug('Ok numbers');
} else {
  System.debug('Not so Good numbers');
}