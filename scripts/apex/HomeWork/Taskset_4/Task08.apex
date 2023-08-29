//  **  # Task Set 4**

// 8. Create a program that take some item from One List to Another according to the condition
//   1. Create List of Integer with 9 elements|items
List<Integer> numberList = new List<Integer>{ 89, 4, 5, 6, 11, 7, 8, 51, 15 };
//   2. Create another empty List of Integer
List<Integer> filteredList = new List<Integer>();

//   3. Iterate over the first List using for each loop
for (Integer each : numberList) {
  //     - check if the number is between 5-10
  //       - if so add this number to second list using secondList.add(itemHere) ;
  if (each >= 5 && each <= 10) {
    filteredList.add(each);
  }
}

//   4. Print out the first List
System.debug('numberList value is : ' + numberList);

//   5. Print out the second List and it's size
System.debug('filteredList value is : ' + filteredList);
System.debug('filteredList.size() value is : ' + filteredList.size());