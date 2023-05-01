// between 0-100 find out the numbers that can be divisible by 15 and create a list of these numbers
// if a number can be divided by 3 and 5 it can be divided by 15
List<Integer> numberList = new List<Integer>();
for(Integer i=1; i<=100 ;i++) {
    if( Math.mod(i,3)==0 && Math.mod(i,5)==0 ){
        numberList.add(i);
    }
}
System.debug('numberlist value is : ' + numberlist); 