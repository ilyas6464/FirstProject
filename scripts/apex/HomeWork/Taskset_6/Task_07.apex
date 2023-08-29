//  **  # Task Set 6 **

// 7. Create an Array of 10 Doubles

Double[] numbers = new List<Double>{
  9.91,
  15.1,
  29.6,
  59.4,
  73.9,
  9.91,
  25.1,
  39.6,
  49.4,
  63.9
};
System.debug('numbers value is : ' + numbers); 
// numbers value is : (9.91, 15.1, 29.6, 59.4, 73.9, 9.91, 25.1, 39.6, 49.4, 63.9)
//  - use Array syntax to loop through each item
Integer count = 0 ; 
Double sum = 0 ; 
for(Integer i=0; i<numbers.size() ; i++) {  
//  - get the count of the number is between 10 and 20 or 40-50
    if( (numbers[i]>=10 && numbers[i]<=20)  ||  (numbers[i]>=40 && numbers[i]<=50)     ){
        count++ ; 
    }
//  - get the sum of the numbers greater than 30
    if(numbers[i] > 30){
        sum += numbers[i]; 
    }
}

System.debug('count value is : ' + count);  // 2
System.debug('sum value is : ' + sum);  // 282.2