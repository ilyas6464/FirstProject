// # Tasks Set 9 :
// 7. Create a String with a long sentence
String sentence = 'I love Salesforce Apex Programming Language';
System.debug('sentence value is : ' + sentence); 
//    - print out the word count in sentence
List<String> wordList = sentence.split(' '); 
//    - loop through each item and reverse the word
for(Integer i=0; i<wordList.size() ; i++) {
   // System.debug('Value at index #'+ i +' is :' + wordList.get(i) );
   wordList[i] = wordList[i].reverse();
}

//    - outside your loop , print to see the result
System.debug('wordList value is : ' + wordList); 