//  **  # Task Set 4**
// 4. Write a program that store 10 Long(data type) values into List of Long 
//    (it should be combination of positive and negative numbers) 
List<Long> longNumList = new List<Long>{
  532206L,
  462731L,
  -100L,
  623335L,
  -200L,
  795103L,
  -30000L,
  -23L,
  192812L,
  -10L,
  226301L
};

Long positiveSum = 0 ;
Integer positiveCount = 0 ;
Long negativeSum = 0 ;

for(Long each : longNumList) {
    // System.debug('Current value : ' + each);
    if(each>0){
        positiveCount++ ;  // increment the count 
        positiveSum += each; // accumulate the positive sum 
    }else{
        negativeSum += each ; // accumulate the negative sum 
    }
}
//    print out the sum of positive numbers 
System.debug('positiveSum value is : ' + positiveSum); 
//    print out the count of positive numbers 
System.debug('positiveCount value is : ' + positiveCount); 
//    print out the count of negative numbers 
System.debug('negativeSum value is : ' + negativeSum); 