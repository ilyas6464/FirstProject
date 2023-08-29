// # Task set 5

// 8. Write a program that create a list of strings

List<String> strList = new List<String>{
  'Salesforce',
  'Google',
  'Apple',
  'Tesla',
  'Microsoft'
};

// - use a for loop and the continue keyword.
for(Integer i=0; i<strList.size() ; i++) {
    //- print the values that are not equal to 'Salesforce',
    if(strList.get(i) == 'Salesforce'){
        continue ; 
    }
    
    System.debug('Value at index #'+ i +' is :' + strList.get(i) );
}

