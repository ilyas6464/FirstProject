//  **  # Task Set 6 **

// 4. Write an Apex code to create List of 10 String with some duplicates values
// ```java
// List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};
// ```


List<String> heroList = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};

// - Find the count of times 'Iron Man' showed up
Integer ironManCount = 0 ; 
for(String each : heroList) {

    if(each=='Iron Man'){
        ironManCount++ ; 
    }

}

System.debug('ironManCount value is : ' + ironManCount); 
// ironManCount value is : 3