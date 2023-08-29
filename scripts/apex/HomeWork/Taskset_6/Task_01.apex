//  **  # Task Set 6 **

// 1. Write an Apex code to create an empty List of Strings 
List<String> nameList = new List<String>();
nameList.add('Anakin'); 
nameList.add('Obivan'); 
nameList.add('Padme'); 

// and add 3 names to it using add() method. then insert 3 more items at index number 1
//  - print them out using both for loop or for each loop
nameList.add(1, 'Yoda');
nameList.add(1, 'Vader');
nameList.add(1, 'Ahsoka');

System.debug('nameList value is : ' + nameList); 