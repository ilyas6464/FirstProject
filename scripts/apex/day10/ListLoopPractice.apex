/**

Create a list of 10 Decimal numbers
in 2 separete loops 
in first loop
iterate over the list and print out the each items
skip item number 3 and 7 while printing  

in secon loop 
iterate over the list and print out the each items
break out of the loop if the number is more than 100

 */

List<Decimal> numbers = new List<Decimal>{
  1.11,
  22.22,
  100.99,
  3.33,
  14.44,
  200.00,
  12.50,
  8.88,
  9.99,
  50.00
};

// Print out last item value without hard coding
Integer indexOfLastItem = numbers.size() - 1;
System.debug(' indexOfLastItem ' + indexOfLastItem); //indexOfLastItem 9
System.debug('last item value  ' + numbers.get(indexOfLastItem)); // last item value  50.00

// loop 1
//iterate over the list and print out the each items
//skip item number 3 and 7 while printing
for (Integer index = 0; index < numbers.size(); index++) {
  //item 3 or ite 7
  if (index == 2 || index == 6) {
    continue;
  }

  System.debug('Index# ' + index + ' : ' + numbers.get(index));
} //Index# 0 : 1.11
// Index# 1 : 22.22
// Index# 3 : 3.33
// Index# 4 : 14.44
// Index# 5 : 200.00
// Index# 7 : 8.88
// Index# 8 : 9.99
// Index# 9 : 50.00

/**
in secon loop 
iterate over the list and print out the each items
break out of the loop if the number is more than 100
 */

for (Decimal eachNum : numbers) {
  if (eachNum > 100) {
    break;
  }
  System.debug(eachNum);
}

// Try
