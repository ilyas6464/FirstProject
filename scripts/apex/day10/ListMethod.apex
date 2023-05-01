/**
List is a collection type that store elements in  insertion order
each and every elements are stored in a position that start with 0

for example if you have below list
 //                                     item 1 2 3 4 5 6
List<Integer>numLst = new List<Integer>{19, 1, 23, 7 ,6, 99 };
//                                      index 0 1 2 3 4 5 
 
 */

List<Integer>numLst = new List<Integer>{19, 1, 23, 7 ,6, 99 };

// get the element at certain index using get method

// get the first element and store in a variable 
Integer item1 = numLst.get(0) ;
System.debug('first item value : '+ item1); //first item value : 19

//directly print out second item value using get method
System.debug('second item value :  ' + numLst.get(1) ); //second item value :  1

System.debug(numLst.get(2));//23
System.debug(numLst.get(3));//7
System.debug(numLst.get(4));//6
System.debug(numLst.get(5));//99

System.debug(numLst); //(19, 1, 23, 7, 6, 99)

System.debug('----------------------------------------');
// iterate over all the elements in the loop without for each loop 

for( Integer index = 0 ;index<6 ;index++  ){
    System.debug( numLst.get(index)   );
}