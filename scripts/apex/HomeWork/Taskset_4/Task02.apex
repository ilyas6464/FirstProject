/*
// practice List using similar approach 
2. Write a program that store the even numbers from 1 to 20 into List of Integer

  then write an apex code to get the sum of all items in the list. 

*/
List<Integer> evenNumber = new List<Integer>();
Integer sum = 0 ;
for(Integer i = 1; i<=20;i+=2){
    evenNumber.add(i);
    sum += i;

}
System.debug('sum value is : ' + sum); 