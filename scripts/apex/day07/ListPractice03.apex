/**
Declare a list of Integer variable and initilize it's value (empty)
fill up the list with 100 items,starting with 1 ----> 100
*/

List<Integer>numberList = new List<Integer>();
// numberList.add(1);
// numberList.add(2);
// numberList.add(3);
// numberList.add(4);
// .....
// numberList.add(100);

for(Integer count=1 ;count<=100 ;count++){
    numberList.add(count);
}
System.debug(numberList);// ( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, ...)
//get the size of the list using method of the list
System.debug(numberList.size()) ; 


/** 
for(Integer count=1;count<=15 ;count++ ){
    System.debug('Hello world');
}15 times hello world
*/

// create a List of Integer and store 15 times
// all time value should be 10 ;
// here is the content of the list
//10,10,10,10,10,10,10,10,10,10,10,10,
List<Integer>voteNumber = new List<Integer>();

for(Integer count =1 ;count<=15;count++){
    voteNumber.add(10); 
}
System.debug(voteNumber);

//How to count the items inside a list
//so we get the a number
//size()method of list
Integer voteCount = voteNumber.size() ;
System.debug( voteCount ) ;// 15 item 

// or you can directly print it out without saving
System.debug( voteNumber.size() );


