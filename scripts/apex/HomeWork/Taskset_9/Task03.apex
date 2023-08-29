// # Tasks Set 9 :
// 3. Create a List of 10 String
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
//    - get the count of String even character count
//    - print them out
Integer evenCount = 0;
for (String each : strList) {
  if( Math.mod(each.length(),2)==0  ) {
    evenCount++;
    System.debug('Current value : ' + each);
  }
}
