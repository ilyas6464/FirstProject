// # Tasks Set 9 :

// 2. Create a List of 10 String
List<String> strList = new List<String>{
  'Hello',
  'Programming',
  'World',
  'is',
  'an',
  'awesome',
  'one',
  'you',
  'love',
  'it'
};
//    - get the count of String with more than 5 characters
//    - print them out
Integer count = 0;
for (String each : strList) {
  if (strList.size() > 5) {
    count++;
    System.debug('Current value : ' + each);
  }
}