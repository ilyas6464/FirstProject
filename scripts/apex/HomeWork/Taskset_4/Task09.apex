//  **  # Task Set 4**

// 9. Write a program that takes a list of strings that represent the names of account owners,

List<String> accountOwners = new List<String>{
  'John Smith',
  'Jane Doe',
  'Jon Snow',
  'Samantha Lee',
  'Alex Wong',
  'Jon Snow',
  'Emily Chen',
  'Jon Snow',
  'Rachel Garcia',
  'John Smith'
};

// - counts the number of times jon snow appears in the list.
Integer countOfJonSnow = 0 ; 

for(String each : accountOwners) {
  if(each=='jon snow'){
    countOfJonSnow++ ; 
  }
}
System.debug('countOfJonSnow value is : ' + countOfJonSnow); 
// countOfJonSnow value is : 3

  