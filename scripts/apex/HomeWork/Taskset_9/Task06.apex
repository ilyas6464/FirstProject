// # Tasks Set 9 :
// 6. Create a String variable with value 
   String word = 'Anakin Skywalker'; 
//    - print out the length of the String 
   System.debug('the length of the String is : ' + word.length() ); 
//    - print out the last character index
   System.debug('the last character index value is : '
                            + (word.length()-1) ); 
//    - print out index of character from the second 
  System.debug('index of the character from the second is : ' 
                            + (word.length()-2) ); 
//    - split the string by empty String to get List of all characters
   List<String> charList = word.split('');
//    - loop through each item and get the count of 'a'
   Integer countOfA = 0 ; 
   for(String each : charList) {
      if(each.equals('a')){
         countOfA++ ; 
      }
   }
   System.debug('countOfA value is : ' + countOfA); 
      
//    - now read the doc and try out `countMatches` method
  System.debug('word.countMatches(\'a\') value is : ' 
                  + word.countMatches('a')); 