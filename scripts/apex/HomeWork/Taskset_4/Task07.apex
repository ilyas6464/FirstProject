//  **  # Task Set 4**
// 7. Similar to above task 
//   1. now create two String variables to store firstName and lastName
String firstName='Jon' , lastName = 'Snow';
//   2. create a variable called leadCount as Integer and initialize to 5
Integer leadCount = 5 ;
//   3. Create an empty List of String 
List<String> leadNameList = new List<String>();

//   4. using loop generate sample lead email in below format and add it to the list
//   ```
//   firstNameValue+lastNameValue_1@force.com
//   firstNameValue+lastNameValue_2@force.com
//   firstNameValue+lastNameValue_3@force.com
//   firstNameValue+lastNameValue_4@force.com
//   firstNameValue+lastNameValue_5@force.com
//   ```
for(Integer i=1; i<=leadCount ;i++) {
    leadNameList.add( firstName+lastName+ '_' +i+ '@force.com' ); 
}
System.debug('leadNameList value is : ' + leadNameList); 
//   5. try changing the leadCount and run your code again 