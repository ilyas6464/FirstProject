/**
Create  a lkst of String that store 4 names

Print out size
Print out item 3

print the item 1 
print out every item using for loop 

 */

List<String> names = new List<String>();
names.add('Hakan');
names.add('Nina');
names.add('Ali');
names.add('Ilaha');
names.add('Cristina');
names.add('Sean');
names.add('Marian');

System.debug(names);

//  print out the size
System.debug('Item count in the list ' + names.size());

//  print the item 3
System.debug(names.get(2));
//  print the item 1
System.debug(names.get(0));

// store the value of number 2 item into a variable
// then print out
String item2 = names.get(1);
System.debug('item2 value is ' + item2);

//   System.debug(names.get(0));
//   System.debug(names.get(1));
//   System.debug(names.get(2));
//   System.debug(names.get(3));

// for (Integer index = 0; index < 4; index++) {
//   System.debug(names.get(index));
// }

// for (Integer index = 0; index < 4; index++) {
//     //index X value Y
//   System.debug(' Index ' + index + ' is  ' + names.size());
// }

for (Integer index = 0; index < names.size(); index++) {
  System.debug(' Index ' + index + ' is  ' + names.size());
  // Index 0 is  7
  //  Index 1 is  7
  //  Index 2 is  7
  //  Index 3 is  7
  //  Index 4 is  7
  //  Index 5 is  7
  //  Index 6 is  7
}
