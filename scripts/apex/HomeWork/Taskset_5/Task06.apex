// # Task set 5 

// 6. Write a program that create List of Integer with 10 items 
List<Integer> numberList = new List<Integer>{71,99,2,92,3,1,22,33,4,55};

//    get the count of the items more than 5 (try for loop and for each loop)
// for each loop version 
Integer count1 = 0 ;
for(Integer each : numberList) {
    if(each>5){
        count1 ++ ; 
    }
}
System.debug('count1 value is : ' + count1); 
//     and print out at the end 

// for loop version 
Integer count2 = 0 ; 
for(Integer i=0; i<numberList.size() ; i++) {
    if(numberList.get(i) > 5){
        count2++ ; 
    }
}
System.debug('count2 value is : ' + count2); 