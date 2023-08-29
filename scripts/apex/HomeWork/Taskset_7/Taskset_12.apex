// **# Tasks Set 7 **

// 12. Write an Apex code that create Set of 10 Integer
Set<Integer> numberSet  = new Set<Integer>{76,59,90,24,58,59,90,24,58,100};
System.debug('numberSet value is : ' + numberSet  ); 
//    - create a variable called average 
Integer average ; 
Integer sum = 0 ; 
for(Integer each : numberSet ) {
   sum += each ; 
}
//    - calculate the average  sum/item count and print it out
average = sum/numberSet.size() ; 
System.debug('sum value is : ' + sum); 
System.debug('average value is : ' + average);    


//    - Create empty List of Integer
List<Integer> numsAboveAverage = new List<Integer>();
//    - store only items above average in above Set

List<Integer> numsBelowAverage = new List<Integer>();


for(Integer each : numberSet ) {
  if( each>average ){
      numsAboveAverage.add(each); 
  }else{
      numsBelowAverage.add(each); 
  }
}
System.debug('numsAboveAverage value is : ' + numsAboveAverage); 
System.debug('numsBelowAverage value is : ' + numsBelowAverage); 

//    - removeAll items that below average from the Set 
numberSet.removeAll(numsBelowAverage); 
System.debug('numberSet value is after removing below average : ' + numberSet); 

/**
numberSet value is : {24, 58, 59, 76, 90, 100}
sum value is : 407
average value is : 67
numsAboveAverage value is : (76, 90, 100)
numsBelowAverage value is : (59, 24, 58)
numberSet value is after removing below average : {76, 90, 100}
 */