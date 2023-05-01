/**
Write an Apex code that store 3 numbers in Integer variables
   - Print out the smallest number 
 */
 Integer num1 =100;
 Integer num2 =200;
 Integer num3 =300;
 if(num1 < num2 && num1<num3 ){
    System.debug('The Smallest Number ' + num1);
 }else if(num2<num1 && num1 < num3 ){
    System.debug('The smalles Number ' + num2);

 }else{
    System.debug('The smalles Number ' + num3);
 }