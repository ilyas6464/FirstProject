//  **  # Task Set 4**

// 6. Write a program that can create X sample List name according to given number as below 
//   1. create a variable called leadCount as Integer and initialize to 4
Integer leadCount = 4 ;

//   2. create a empty List of String 
List<String> leadNameList = new List<String>();
//   3. use for loop to add items to List to generate as below 
//     ```
//     Sample Lead 1
//     Sample Lead 2
//     Sample Lead 3
//     Sample Lead 4
//     ```
for(Integer i=1; i<=leadCount ; i++) {
    leadNameList.add('Sample Lead '+i); 
}
//   4. print out the List variable and the size 
System.debug('leadNameList value is : ' + leadNameList); 
System.debug('leadNameList.size() value is : ' + leadNameList.size() ); 
//   5. try changing the leadCount and run your code again 