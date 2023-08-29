// **# Tasks Set 2** :

// 1. Write an Apex code that store two numbers in **Integer** variables
//    - Print out the bigger number

Integer num1 = 1100;
Integer num2 = 3000;

if (num1 > num2) {
  System.debug('Bigger number is num1, value is : ' + num1);
} else if (num2 > num1) {
  System.debug('Bigger number is num2, value is : ' + num2);
} else {
  System.debug('They are equal ' + num1);
}
//Bigger number is num2, value is : 3000