// **# Tasks Set 2** : 

// 2. Write an Apex code that store 3 numbers in **Integer** variables
//    - Print out the smallest number 

Integer num1 = 10 , num2 = 20, num3 = 30 ; 

if(num1<num2 && num1<num3){
   System.debug('num1 is smallest number, value is : ' + num1); 
}else if(num2<num1 && num2<num3){
   System.debug('num2 is smallest number, value is : ' + num2); 
}else{
   System.debug('num3 is smallest number, value is : ' + num3); 
}