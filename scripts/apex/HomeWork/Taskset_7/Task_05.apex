// **# Tasks Set 7 **
// 5. Write an Apex code that create List or Array of 5 Integer values. 
Integer[] numArr = new Integer[]{1,4,6,4,6};
System.debug('numArr value before is : ' + numArr); 
//numArr value before is : (1, 4, 6, 4, 6)

//    - double the value of each item 
for(Integer i=0; i<numArr.size() ;i++) {
   numArr[i] *= 2 ; // or numArr[i] = numArr[i] * 2; 
}
//    - for example `{1,4,6,4,6}` => `{2,8,12,8,12}`
System.debug('numArr value after is : ' + numArr); 

//numArr value after is : (2, 8, 12, 8, 12)
