/**
**A Bonus Task: **
Given  2 Integer values : 
Integer num1 = 12 ; 
Integer num2 = 10 ;

Swap the value of `num1` , `num2` 
so `num1` become 10 and `num2` become 12.
HINT: you need a temp variable for temporarily storing the value of one number.
 */

Integer num1 = 12 ; 
Integer num2 = 10 ;
System.debug('num1 before value is : ' + num1) ; 
System.debug('num2 before value is : ' + num2) ;

// temp variable to hold num1 value  
Integer temp = num1 ; 
// change num1 value to num2 ; 
        num1 = num2 ; 
// change num2 value to num1 stored in the temp
        num2 = temp ; 

System.debug('num1 After value is : ' + num1) ; 
System.debug('num2 After value is : ' + num2) ;

// https://cdn.discordapp.com/attachments/1025426130678849543/1078656328161046558/swap.gif