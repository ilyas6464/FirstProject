// **# Tasks Set 7 **

// Refer #"Day 12 Code" Extras at the end for this
// 8.  Write an Apex code that create 2 Set of Integer with 5 values
Set<Integer> numberSet1 = new Set<Integer>{11,22,89,54,42,42,47};
Set<Integer> numberSet2 = new Set<Integer>{89,54,42,42,47};

//    -  check if all items in set 2 exists in set 1
System.debug('numberSet1.containsAll(numberSet2) value is : ' 
                  + numberSet1.containsAll(numberSet2)); 
//    -  check if all items in set 1 exists in set 2
//       -  HINT : containsAll method
System.debug('numberSet2.containsAll(numberSet1) value is : ' 
                  + numberSet2.containsAll(numberSet1)); 
//    -  add all items in the set 1 into set 2
numberSet1.addAll(numberSet2);
System.debug('numberSet1 value is : ' + numberSet1); 
//    -  check if all items in set 2 exists in set 1
System.debug('numberSet1.containsAll(numberSet2) value is : ' 
                  + numberSet1.containsAll(numberSet2)); 
//    -  check if all items in set 1 exists in set 2
System.debug('numberSet2.containsAll(numberSet1) value is : ' 
                  + numberSet2.containsAll(numberSet1)); 
//    -  remove all items exists in set 2 from set 1
//       -  HINT : removeAll method
System.debug('numberSet1.removeAll(numberSet2) value is : ' + numberSet1.removeAll(numberSet2)); 
System.debug('numberSet1 value is : ' + numberSet1); 