/**
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.
htm#apex_System_Math_mod


Math class is a class coming from Apex itself
it has lot of pre-written code math we can just use drictly 
Mod operator in math allow you to get the remainder of devision 

10 / 3 = 3   1 remain

 */

 Integer num1 = 10 ;
 Integer num2 = 3 ;

 Integer result = num1 / num2 ; 
 System.debug('result value is : ' + result);
 // result value is : 3
 // Math.mod(num1,num2) ==>> remainder of the division
 Integer remainder = Math.mod(num1,num2)  ;
 System.debug('remainder value is : ' + remainder); 
 //remainder value is : 1

 /**
 
 Odd or even in Math 
 Odd Number is a number that will have reamainder of 1 when  divided by 2
 Even Number is number that will have remainder of 0 when divided by 2
  */
 Integer score = 4;

 //store the result of cheching the number is even or odd into a Boolean variable 
Boolean isEven = Math.mod(score, 2) == 0;
System.debug('isEven value is : ' + isEven); 
//isEven value is : false

//print odd number if score is odd ,and print even number if its even 
if( isEven==true ){
    System.debug('Even number'); 
}else{
    System.debug('Odd number'); 
}

//waht if we do not want to to create a variable to store the result of even or odd
if( Math.mod(score,2)==0 ){
    System.debug('Even number'); 
}else{
    System.debug('Odd number'); 
}

// Math.max (number 1 ,number 2 )==>> return the bigger number
System.debug('Which number is bigger : '  + Math.max(11, 99)  ); 
    //Which number is bigger : 99
    
// Math.min (number 1 ,number 2 )==>> return the smaller number
System.debug('Which number is smaller : '  + Math.min(11, 99)  ); 
    //Which number is smaller : 11

// Math.random()==>> 
// Returns a positive Double that is greater than equal to 0.0 and less than 1.0

Double randomDbl = Math.random() * 100;
System.debug('randomDbl value is : ' + randomDbl); 
//randomDbl value is : 0.41022905772375584
//System.debug('randomDbl value is : ' + randomDbl * 100 ) ;
//randomDbl value is : 41.02290577237559
Integer randomInteger = randomDbl.intValue() ; 
System.debug('randomInteger value is : ' + randomInteger); 

Double price = 15.5 ;
Integer PriceWholeNumber = Price.intValue() ;
System.debug('priceWholeNumber value is : ' + priceWholeNumber); 
 //priceWholeNumber value is : 15