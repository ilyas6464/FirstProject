//  **  # Task Set 4**

// 10. Write a program that takes a list of integers that represent the amounts of money spent by a set of users, and calculates the number of users who spent more than a certain amount (like 10000) of money.
// in another word, create a list of Integer and get the count of numbers that over 10000 
List<Integer> userSpentAmountList = new List<Integer>{6000, 8000, 10000, 15000, 20000};
System.debug('userSpentAmountList value is : ' + userSpentAmountList); 
Integer countOfOver10K = 0 ; 

for(Integer each : userSpentAmountList) {
  if(each>10000){
    countOfOver10K ++ ; 
    System.debug('each value is : ' + each); 
  }
}
  
System.debug('countOfOver10K value is : ' + countOfOver10K); 
// countOfOver10K value is : 2