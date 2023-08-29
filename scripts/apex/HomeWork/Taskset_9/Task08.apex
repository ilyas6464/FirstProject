// # Tasks Set 9 :
// 8. Create a String with a long sentence
String sentence = 'I love Salesforce Apex Programming Language';
System.debug('sentence value is : ' + sentence); 
//    - split the sentence to get word list 
List<String> wordList = sentence.split(' '); 
//    - print out the word count in sentence
//    - create a variable called longestCharCount to represent longest char count
//    - assign it's value to first item length
Integer longestCharCount = wordList[0].length() ; 

//    - loop through each item 
for(String each : wordList) {
   //  - use `Math.max(longestCharCount, each.length() )`
      longestCharCount = Math.max(longestCharCount, each.length()) ; 
}
//    - outside your loop , print to see the result of longestCharCount
System.debug('longestCharCount value is : ' + longestCharCount); 


// extra requirement , find the word with longest char count
// multiple approach : here is only one example out of all 
String longestWord = wordList[0]; 

for(String each : wordList) {
   // in each iteration , compare the length 
   // and assign new longest word
   if(each.length() > longestWord.length() ){
      longestWord = each ; 
   } // else take no action

}
System.debug('longestWord value is : ' + longestWord); 