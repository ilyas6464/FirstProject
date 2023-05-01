/**
 Array, just like a List, ordered collection 
 can store multiple item of same type 
 can have duplicate  
 and it use [] 
 syntax for creating as below 
    // creating empty array with pre-defined size
    DataType[] varName = new DataType[sizeOfArray];

    // creating empty array with pre-defined size
    DataType[] varName = new DataType[]{item1,item2.item3...};

    we can access the individual items as below using index 
    first item  yourArrayName[0]
    second item  yourArrayName[1]
    third item  yourArrayName[2]
    
 */
 //array that can store for string
 String[]groceries = new String[4];
 groceries[0] = 'Bread';
 groceries[1] = 'Egg';
 groceries[2] = 'Beef';
 groceries[3] = 'Banana';
 //groceries[4]= 'Banana';
 
groceries.add('Milk') ;// groceries value is : (Bread, Egg, Beef, Banana, Milk)


 System.debug('groceries value is : ' + groceries); //groceries value is : (Bread, Egg, Beef, Banana)

// using array syntax , print out the item at index 2
System.debug('item at index 2 ' +  groceries[2]  );//item at index 2 Beef
// using array syntax , print out the item at index 2
System.debug('item at index 2 ' +  groceries.get(2)  );//item at index 2 Beef

//change the value of item at indez 1 to "Cream Chesse"
groceries[1] = 'Cream Chesse';
System.debug('groceries value is : ' + groceries); //groceries value is : (Bread, Cream Chesse, Beef, Banana, Milk)

// MyAwsomeType
// List<MyAwsomeType>
// MyAwsomeType[]
//below code will work because for apex complier they are same thing
//Integer[] numbers = new List<Integer>();

for(String each : groceries) {
    System.debug('Current value : ' + each);// Current value : Bread
                                            // Current value : Cream Chesse
                                            // Current value : Beef 
                                            // Current value : Banana
                                            // Current value : Milk

}
    
// System.debug(' value is : ' + groceries[0] ); 
// System.debug(' value is : ' + groceries[1] ); 
// System.debug(' value is : ' + groceries[2] ); 
// System.debug(' value is : ' + groceries[3] ); 
                                                    //  value is : Bread
                                                    //  value is : Cream Chesse
                                                    //  value is : Beef
                                                    //  value is : Banana

for(Integer index=0; index<4 ;index++) {
    System.debug(' value is : ' + groceries[index] );
                                                            // value is : Bread
                                                            // value is : Cream Chesse
                                                            // value is : Beef
                                                            // value is : Banana
}



















