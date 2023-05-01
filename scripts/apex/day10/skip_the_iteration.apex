/**
Sometimes we want to skip certain iteration if certain condition Met
and jumpt to next iteration 
*/

// count from 1- 10 and print
// skip 5 while counting

//  for(Integer count=1 ;  count<=10 ; count++) {
//     if(count!=5){
//     System.debug('count value ' + count);
//     }

//  }

for (Integer count = 1; count <= 10; count++) {
  if (count == 5) {
    System.debug('skiping the rest in the this iteration');
    continue;
  }
  System.debug('count value ' + count);
}
/**
 Imagine you are the teacher and you have 10 kids 

 You are giving treat to all the kids expect the trouble maker by going through each and every kid , you skip the kid that is trouble maker while distributing the treat and continue with the next one. 

 That's what continue keyword does in the loop

 */

/**
 create List of Integer with couple itemes
 Iterate over each items and print the number
 skip when see any number that  more than 10
  */

List<Integer> numLst = new List<Integer>{ 19, 1, 23, 4, 6, 99 };

for (Integer eachNum : numLst) {
  if (eachNum > 10) {
    continue;
  }
  System.debug(eachNum);
}
