// **# Tasks Set 7 **

// 13. Write an Apex code that create List of 10 Integer values as scoreList
List<Integer> scoreList = new List<Integer>{
  20,
  68,
  90,
  74,
  39,
  11,
  -44,
  -4,
  111,
  333,
  44
};
System.debug('scoreList value is : ' + scoreList);
//     - get the count of numbers less than 0 or greater than 100
Integer badNumberCount = 0;
for (Integer each : scoreList) {
  if (each > 100 || each < 0) {
    badNumberCount++;
  }
}
System.debug('badNumberCount value is : ' + badNumberCount);

//     - in separate loop, update the value of items as below
for (Integer i = 0; i < scoreList.size(); i++) {
  // System.debug('Value at index #'+ i +' is :' + scoreList.get(i) );
  //       - if the Integer less than 0 update it to 0
  if (scoreList.get(i) < 0) {
    scoreList.set(i, 0);
  }
  //       - if the Integer more than 100 update it to 100
  if (scoreList.get(i) > 100) {
    scoreList.set(i, 100);
  }
}
System.debug('scoreList value is : ' + scoreList); 

//     - HINT : Array syntax is much simpler when it comes to update


Integer[] scoreList2 = new Integer[]{
  20,
  68,
  90,
  74,
  39,
  11,
  -44,
  -4,
  111,
  333,
  44
};

//     - in separate loop, update the value of items as below
for (Integer i = 0; i < scoreList2.size(); i++) {
  // System.debug('Value at index #'+ i +' is :' + scoreList.get(i) );
  //       - if the Integer less than 0 update it to 0
  if (scoreList2[i] < 0) {
    scoreList2[i] = 0 ; 
  }
  //       - if the Integer more than 100 update it to 100
  if (scoreList2[i] > 100) {
     scoreList2[i] = 100 ; 
  }
}

System.debug('scoreList2 value is : ' + scoreList2); 